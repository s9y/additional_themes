function NiftyCheck(){
if(!document.getElementById || !document.createElement){
return false}
var b=navigator.userAgent.toLowerCase()
if(b.indexOf("msie 5")>0&&b.indexOf("opera")==-1){
return false}
return true}
function Rounded(selector,bk,color,sizex,sizey,topleft,topright,bottomleft,bottomright){
var i
var v=getElementsBySelector(selector)
var l=v.length
for(i=0;i<l;i++){
if(topleft || topright){
AddTop(v[i],bk,color,sizex,sizey,topleft,topright)}
if(bottomleft || bottomright){
AddBottom(v[i],bk,color,sizex,sizey,bottomleft,bottomright)}}}
Math.sqr=function(x){
return x*x}
function Blend(a,b,alpha){
var ca=Array(
parseInt('0x'+a.substring(1,3)),
parseInt('0x'+a.substring(3,5)),
parseInt('0x'+a.substring(5,7))
)
var cb=Array(
parseInt('0x'+b.substring(1,3)),
parseInt('0x'+b.substring(3,5)),
parseInt('0x'+b.substring(5,7))
)
return '#'+Math.round(ca[0]+(cb[0]-ca[0])*alpha).toString(16)
+Math.round(ca[1]+(cb[1]-ca[1])*alpha).toString(16)
+Math.round(ca[2]+(cb[2]-ca[2])*alpha).toString(16)}
function AddTop(el,bk,color,sizex,sizey,topleft,topright){
var i,j
var d=document.createElement("div")
d.style.backgroundColor=bk
d.className="rounded"
var lastarc=0
for(i=1;i<=sizey;i++){
var coverage,arc2,arc3
arc=Math.sqrt(1.0-Math.sqr(1.0-i/sizey))*sizex
var n_bg=sizex-Math.ceil(arc)
var n_fg=Math.floor(lastarc)
var n_aa=sizex-n_bg-n_fg
var x=document.createElement("div")
var y=d
if(topleft&&topright){
x.style.margin="0px "+n_bg+"px"}
if(topleft&&!topright){
x.style.margin="0px "+"0px "+"0px "+n_bg+"px"}
if(!topleft&&topright){
x.style.margin="0px "+n_bg+"px "+"0px "+"0px"}
for(j=1;j<=n_aa;j++){
if(j==1){
if(j==n_aa){
coverage=((arc+lastarc)*.5)-n_fg}
else{
arc2=Math.sqrt(1.0-Math.sqr((sizex-n_bg-j+1)/sizex))*sizey
coverage=(arc2-(sizey-i))*(arc-n_fg-n_aa+1)*.5
coverage=0}}
else if(j==n_aa){
arc2=Math.sqrt(1.0-Math.sqr((sizex-n_bg-j+1)/sizex))*sizey
coverage=1.0-(1.0-(arc2-(sizey-i)))*(1.0-(lastarc-n_fg))*.5}
else{
arc3=Math.sqrt(1.0-Math.sqr((sizex-n_bg-j)/sizex))*sizey
arc2=Math.sqrt(1.0-Math.sqr((sizex-n_bg-j+1)/sizex))*sizey
coverage=((arc2+arc3)*.5)-(sizey-i)}
x.style.backgroundColor=Blend(bk,color,coverage)
y.appendChild(x)
y=x
var x=document.createElement("div")
if(topleft&&topright){
x.style.margin="0px 1px"}
if(topleft&&!topright){
x.style.margin="0px 0px 0px 1px"}
if(!topleft&&topright){
x.style.margin="0px 1px 0px 0px"}}
x.style.backgroundColor=color
y.appendChild(x)
lastarc=arc}
el.insertBefore(d,el.firstChild)}
function AddBottom(el,bk,color,sizex,sizey,bottomleft,bottomright){
var i,j
var d=document.createElement("div")
d.className="rounded"
d.style.backgroundColor=bk
var lastarc=0
for(i=1;i<=sizey;i++){
var coverage,arc2,arc3
arc=Math.sqrt(1.0-Math.sqr(1.0-i/sizey))*sizex
var n_bg=sizex-Math.ceil(arc)
var n_fg=Math.floor(lastarc)
var n_aa=sizex-n_bg-n_fg
var x=document.createElement("div")
var y=d
if(bottomleft&&bottomright){
x.style.margin="0px "+n_bg+"px"}
if(bottomleft&&!bottomright){
x.style.margin="0px "+"0px "+"0px "+n_bg+"px"}
if(!bottomleft&&bottomright){
x.style.margin="0px "+n_bg+"px "+"0px "+"0px"}
for(j=1;j<=n_aa;j++){
if(j==1){
if(j==n_aa){
coverage=((arc+lastarc)*.5)-n_fg}
else{
arc2=Math.sqrt(1.0-Math.sqr((sizex-n_bg-j+1)/sizex))*sizey
coverage=(arc2-(sizey-i))*(arc-n_fg-n_aa+1)*.5
coverage=0}}
else if(j==n_aa){
arc2=Math.sqrt(1.0-Math.sqr((sizex-n_bg-j+1)/sizex))*sizey
coverage=1.0-(1.0-(arc2-(sizey-i)))*(1.0-(lastarc-n_fg))*.5}
else{
arc3=Math.sqrt(1.0-Math.sqr((sizex-n_bg-j)/sizex))*sizey
arc2=Math.sqrt(1.0-Math.sqr((sizex-n_bg-j+1)/sizex))*sizey
coverage=((arc2+arc3)*.5)-(sizey-i)}
x.style.backgroundColor=Blend(bk,color,coverage)
y.insertBefore(x,y.firstChild)
y=x
var x=document.createElement("div")
if(bottomleft&&bottomright){
x.style.margin="0px 1px"}
if(bottomleft&&!bottomright){
x.style.margin="0px 0px 0px 1px"}
if(!bottomleft&&bottomright){
x.style.margin="0px 1px 0px 0px"}}
x.style.backgroundColor=color
y.insertBefore(x,y.firstChild)
lastarc=arc}
el.appendChild(d)}
function getElementsBySelector(selector){
var i
var s=[]
var selid=""
var selclass=""
var tag=selector
var objlist=[]
if(selector.indexOf(" ")>0){
s=selector.split(" ")
var fs=s[0].split("#")
if(fs.length==1){
return objlist}
return document.getElementById(fs[1]).getElementsByTagName(s[1])}
if(selector.indexOf("#")>0){
s=selector.split("#")
tag=s[0]
selid=s[1]}
if(selid !=""){
objlist.push(document.getElementById(selid))
return objlist}
if(selector.indexOf(".")>0){
s=selector.split(".")
tag=s[0]
selclass=s[1]}
var v=document.getElementsByTagName(tag)
if(selclass==""){
return v}
for(i=0;i<v.length;i++){
if(v[i].className==selclass){
objlist.push(v[i])}}
return objlist}