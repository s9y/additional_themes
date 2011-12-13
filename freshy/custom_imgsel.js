<!--

function disable_text_box(toggle,text_box){

var h = document.getElementById(text_box); 
h.disabled=toggle;

}
function mybd_spawn_window(rd_id,rd_desc,section_desc)
{
var x=document.getElementById(rd_id);

var w= window.open('',"preview_win");
w.document.write('<html><head><title>'+rd_desc+' - '+section_desc+'</title></head><body>');
if(x.value=="")
{
w.document.write("No image selected. Use the 'media library' option to select an image");	
}
else
{
w.document.write('<h3>'+section_desc+'</h3><h4>'+rd_desc+'</h4><img src="'+x.value+'" />');
}
w.document.write('<p><a href="#" onclick="self.close();" > Close window</a></p>');
w.document.write('</body></html>');
w.document.close();
}

function mybd_spawn_media_manager(target_txt_box)
{
	
	disable_text_box(false,target_txt_box);	
	window.open('serendipity_admin_image_selector.php?serendipity[htmltarget]='+target_txt_box+'&serendipity[filename_only]=true', 'ImageSel', 'width=800,height=600,toolbar=no,scrollbars=1,scrollbars,resize=1,resizable=1');
	
}
//-->
