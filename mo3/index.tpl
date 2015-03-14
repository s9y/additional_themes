{if $is_embedded != true}
{if $is_xhtml}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
           "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
{else}
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
           "http://www.w3.org/TR/html4/loose.dtd">
{/if}

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang}" lang="{$lang}">
<head>
    <title>{$head_title|@default:$blogTitle} {if $head_subtitle} - {$head_subtitle}{/if}</title>
    <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
    <meta name="generator" content="Serendipity v.{$serendipityVersion}" />
{if ($view == "entry" || $view == "start" || $view == "feed" || $view == "plugin" || $staticpage_pagetitle != "" || $robots_index == 'index')}
    <meta name="robots" content="index,follow" />
{else}
    <meta name="robots" content="noindex,follow" />
{/if}
{if ($view == "entry")}
    <link rel="canonical" href="{$entry.rdf_ident}" />
{/if}
{if ($view == "start")}
    <link rel="canonical" href="{$serendipityBaseURL}" />
{/if}
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" media="screen" />
    <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="print.css"}" media="print" />
    <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="s9y.css"}" media="all" />
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}

<link  href="{serendipity_getFile file="dropdown.linear.css"}"     media="screen" rel="stylesheet" type="text/css" />
<link href= "{serendipity_getFile file="default.ultimate.linear.css"}"     media="screen" rel="stylesheet" type="text/css" />
<link href= "{serendipity_getFile file="tab.css"}"     media="screen" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="{serendipity_getFile file="jquery.js"}"></script>
<script type="text/javascript" src="{serendipity_getFile file="xinterface.js"}"></script>
<script type="text/javascript" src="{serendipity_getFile file="init.js"}"></script>



<!--[if lt IE 7]>

<script type="text/javascript" src="{serendipity_getFile file="jquery.dropdown.js"}"></script>
<![endif]-->

<style type="text/css">
       div.xtabcontents {ldelim}
	height: 100px ;
    {rdelim}

  {foreach from=$tabklotz1 item="tabklotz2" name=klotz2}

    div.{$tabklotz2.tabklotzname} {ldelim}
   	height: {$tabklotz2.tabwinheight}px ;
       	background: #f4f4f4;
    	overflow: hidden;
    	border: 1px dotted #004fae;
    	border-top: 2px solid #004fae;
	padding: 3px;
    {rdelim}
{/foreach}
</style>


{serendipity_hookPlugin hook="frontend_header"}
</head>

<body id="top" >
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}


{assign var="view2" value=$view}
<div id="page" class="clearfloat">


<h2><a class="homelink1" href="{$serendipityBaseURL}">{$blogTitle}</a></h2>
            <div class="description">{$blogDescription}</div><!-- /.description -->


{if $template_option.enablehmenue =="true"}
<ul id="nav" class="dropdown dropdown-linear">
        <li><a href="{$serendipityBaseURL}"{if $currpage==$serendipityBaseURL} class="on"{/if}>{$CONST.HOMEPAGE}</a></li>
 	{foreach from=$navlinks item="navlink" name=navbar}
       <li><a href="{$navlink.href}"{if $navlink.drop != "0"} class="dir"{/if}>{$navlink.title} </a>
            {if $navlink.drop != "0"} <ul>  {foreach from=$navlink.dropdownentries item="sub" name=subnavbar} <li> <a {if $currpage==$sub.href}class="currentpage" {/if}href="{$sub.href}" title="{$sub.title}" >{$sub.title}</a></li>{/foreach}</ul> {/if}
       </li>
	{/foreach}
        {if $is_logged_in}
        <li><a class="dir" href="#">{$CONST.EDIT} </a>
 		    <ul>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=personal">	{$CONST.PERSONAL_SETTINGS}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=entries&amp;serendipity[adminAction]=new">	{$CONST.ENTRIES}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=entries&amp;serendipity[adminAction]=editSelect">	{$CONST.EDIT_ENTRIES}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=category&amp;serendipity[adminAction]=view">	{$CONST.CATEGORIES}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=event_display&amp;serendipity[adminAction]=staticpages">	{$CONST.PLUGIN_STATICPAGELIST_TITLE_DEFAULT}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=media&amp;serendipity[adminAction]=addSelect">	{$CONST.ADD_MEDIA}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=media">	{$CONST.MEDIA_LIBRARY}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=media&amp;serendipity[adminAction]=directorySelect">	{$CONST.MANAGE_DIRECTORIES}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=media&amp;serendipity[adminAction]=sync">	{$CONST.CREATE_THUMBS}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=templates">	{$CONST.MANAGE_STYLES}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=plugins">	{$CONST.CONFIGURE_PLUGINS}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=plugins&amp;serendipity[adminAction]=addnew">	+ Sidebar-Plugin </a></li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=plugins&amp;serendipity[adminAction]=addnew&amp;serendipity[type]=event">	+ Event-Plugin</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=configuration">	{$CONST.CONFIGURATION}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=users">	{$CONST.MANAGE_USERS}</a> </li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=groups">	{$CONST.MANAGE_GROUPS} </a></li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=import">	{$CONST.IMPORT_ENTRIES} </a></li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=export">	{$CONST.EXPORT_ENTRIES} </a></li>
			<li>	<a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=logout" rel="gb_page_center[500, 500]">
			Logout</a></li>
 		   </ul>
 	 </li>
	{else}
 	 <li><a href="{$serendipityBaseURL}/serendipity_admin.php">Login</a></li>
	{/if}
 </ul>
{/if}                                                         <!-- /.template_option.enablehmenue =="true" -->

 <div class="clearfloat">
    <div id="content">

     {if $template_option.enabletopsidebar =="true"}
	{if not $category_info.categoryid ==''}
	  {foreach from=$catlinks item="catlink" name=catbar}
	    {if $category_info.categoryid==$catlink.catt}
	     {if $catlink.position=="0"}   {include file="./catbanner.tpl"} {/if}

	    {/if}
	  {/foreach}
	{/if}

        <br/>  {serendipity_printSidebar side="top" template="sidebar_tab.tpl"} <br/>


	{if not $category_info.categoryid ==''}
	  {foreach from=$catlinks item="catlink" name=catbar}
	    {if $category_info.categoryid==$catlink.catt}
	     {if $catlink.position=="1"}   {include file="./catbanner.tpl"} {/if}

	    {/if}
	  {/foreach}
	{/if}
     {/if}


	{if $template_option.enabletaba =="true"}
	  {if $view2 == "start"}
		  {if $template_option.enablesticky !="true"}
		        {assign var="tab3" value='id="selected"'}
		         {if $template_option.enabletabx3 !="true"}{assign var="tab2" value='id="selected"'} {/if}
		  {/if}



	 {assign var="view3" value="selected"}
	  <div id="menu">
 		<ul>
 		     {if $template_option.enabletabx1 =="true"}
 			<li id={$view3}><a href="{$serendipityBaseURL}{getCategoryLinkByID cid=$template_option.tabx1}">
 			{assign var="view3" value="noselected"}
 			{$tabx1_cat}
 			<!--[if gte IE 7]><!--></a><!--<![endif]-->
 		        	  <!--[if lte IE 6]> 	<table>	<tr> <td><![endif]-->
  			<ul><li>
 				 <div class="serendipityTabSideBarContent">
 	 				<p>{serendipity_fetchPrintEntries category=$template_option.tabx1 full=true fetchDrafts=false noSticky=true limit="0,10" template="entries_tab.tpl"}</p>
 	 			  </div> <br/>
 			</li></ul>
 			<!--[if lte IE 6]></td> </tr>	 </table> </a><![endif]-->
 					</li>
 		      {/if}



 		     {if $template_option.enabletabx2 =="true"}
 			<li id={$view3}><a href="{$serendipityBaseURL}{getCategoryLinkByID cid=$template_option.tabx2}">
 			{assign var="view3" value="noselected"}
 			{$tabx2_cat}
 			<!--[if gte IE 7]><!--></a><!--<![endif]-->
 		        	 <!--[if lte IE 6]> 	<table>	<tr> <td><![endif]-->
 			<ul><li>
 				 <div class="serendipityTabSideBarContent">
 	 			   <p>{serendipity_fetchPrintEntries category=$template_option.tabx2 full=true fetchDrafts=false noSticky=true limit="0,10" template="entries_tab.tpl"}</p>
  			         </div><br/>
 			</li></ul>
 			<!--[if lte IE 6]></td> </tr>	 </table> </a><![endif]-->
 					</li>
 		      {/if}




  		     {if $template_option.enabletabx3 =="true"}
 			<li id={$view3}><a href="{$serendipityBaseURL}{getCategoryLinkByID cid=$template_option.tabx3}">
 			{assign var="view3" value="noselected"}
 			{$tabx3_cat}
 			<!--[if gte IE 7]><!--></a><!--<![endif]-->
 		        	 <!--[if lte IE 6]> 	<table>	<tr> <td><![endif]-->
 			<ul><li>
 				 <div class="serendipityTabSideBarContent">
 	 			   <p>{serendipity_fetchPrintEntries category=$template_option.tabx3 full=true fetchDrafts=false noSticky=true limit="0,10" template="entries_tab.tpl"}</p>
  				 </div> <br/>
 			</li></ul>
 			<!--[if lte IE 6]></td> </tr>	 </table> </a><![endif]-->
 					</li>
 		    {/if}





  		     {if $template_option.enablesticky !="atrue"}
 			<li id={$view3}><a href="#nogo">
 			{assign var="view3" value="noselected"}
 			{$template_option.stickyheader}
 			<!--[if gte IE 7]><!--></a><!--<![endif]-->
       				 <!--[if lte IE 6]> 	<table>	<tr> <td><![endif]-->
 			<ul><li>
 				 <div class="serendipityTabSideBarContent">
 	 			   {serendipity_fetchPrintEntries full=false limit="0,10" use_hooks=0  use_footer="false"  skip_smarty_hooks="true"  entryprops="ep_is_sticky=true"  template="entries_tab.tpl"}
   				 </div>  <br/>
 			</li></ul>
 			<!--[if lte IE 6]></td> </tr>	 </table> </a><![endif]-->
 					</li>
 		     {/if}

 		</ul>
	</div><!-- /#MENU -->


   {/if}      <!-- /.view =="start" -->
 {/if}       <!-- /.template_option.enabletaba =="true" -->





 {if $template_option.magazinemode == "false"}   {assign var="view2" value="magazine"}{/if}

{if $view2 == "entry"}
    <!-- single entry page including trackbacks, comments, and commentform -->
    {include file="./entries_single.tpl"}
{elseif $view2 == "start"}
    <!-- start page displaying three different areas -->

 {if $template_option.enablecatrol == "true"}
       {serendipity_fetchPrintEntries category=$template_option.catrol full=true fetchDrafts=false noSticky=true limit="0,5 " template="entries_rol.tpl"}
  {/if}


    {if $template_option.enablecatlead =="true"}
        <div id="lead" class="feature clearfloat">
            {serendipity_fetchPrintEntries category=$template_option.catlead full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_lead.tpl"}
        </div><!-- /#lead -->
    {/if}                                                         <!-- /.template_option.enablecatlead =="true" -->


    <div id="leftcol">

    <div class="arrowlistmenu">

    <ul >
          {foreach from=$sbmenue1 item="sbmenue2" name=sbmen2}

           {if $sbmenue2.position=="2"}
            <h3 ><a  href="{$sbmenue1.href}" title="{$sbmenue1.title} "{if $sbmenue1.target=='true'} target="_blank"{/if}>{$sbmenue2.title}</a></h3>

            <ul>
              {foreach from=$sbmenue2.menuepoints item="menue2" name=sbmenues1}
                <li><a href="{$menue2.href}" title="{$menue2.title}"{if $menue2.target=='1'} target="_blank"{/if}{if $menue2.target=='2'} target="_blank" rel="nofollow"{/if}>{$menue2.title}-{$menue2.target}</a></li>
              {/foreach}
            </ul>

           {/if}

          {/foreach}
          {if $sbmenue2.position!="2"} {/if}
     </ul>
 </div>
           {serendipity_fetchPrintEntries category=$template_option.catfeat full=true fetchDrafts=false noSticky=true limit="0,5 " template="entries_lcol.tpl"}






{foreach from=$tabklotz1 item="tabklotz2" name=klotz2}

 {assign var="windowprint" value="0"}

                {foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}
                  {if $tabklotz2.position=="2"} {if $windowprint=="0"}  {assign var="windowprint" value="1"} <div class="tabcontainer">  <ul class="tabnav"> {/if} <li><a href="#{$tab2.title}"> {$tab2.title} </a></li>  {/if}
                {/foreach}
                 {if $windowprint=="1"} </ul> <div class="tabcontents {$tabklotz2.tabklotzname}">  {/if}
               {foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}
                {if $tabklotz2.position=="2"}
                 <div class="content" id="{$tab2.title}">
                          <h2>{$tab2.title}</h2>
                          <p>{$tab2.tabstext} </p>
                 </div>
                 {/if}
              {/foreach}
              {if $tabklotz2.position=="2"}
               </div>
           </div>
           {/if}
   {/foreach}







    <div class="arrowlistmenu">

        <ul >
              {foreach from=$sbmenue1 item="sbmenue2" name=sbmen2}

               {if $sbmenue2.position=="3"}
                <br/><h3 ><a  href="{$sbmenue1.href}" title="{$sbmenue1.title} "{if $sbmenue1.target=='true'} target="_blank"{/if}>{$sbmenue2.title}</a></h3>

                <ul>
                  {foreach from=$sbmenue2.menuepoints item="menue2" name=sbmenues1}
                    <li><a href="{$menue2.href}" title="{$menue2.title}"{if $menue2.target=='1'} target="_blank"{/if}{if $menue2.target=='2'} target="_blank" rel="nofollow"{/if}>{$menue2.title}-{$menue2.target}</a></li>
                  {/foreach}
                </ul>

               {/if}

              {/foreach}
              {if $sbmenue2.position!="3"} {/if}
         </ul>
 </div>


    </div><!-- /#leftcol -->


    <div id="rightcol">



{foreach from=$tabklotz1 item="tabklotz2" name=klotz2}

 {assign var="windowprint" value="0"}

                {foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}
                  {if $tabklotz2.position=="4"} {if $windowprint=="0"}  {assign var="windowprint" value="1"} <div class="tabcontainer">  <ul class="tabnav"> {/if} <li><a href="#{$tab2.title}"> {$tab2.title} </a></li>  {/if}
                {/foreach}
                 {if $windowprint=="1"} </ul> <div class="tabcontents {$tabklotz2.tabklotzname}">  {/if}
               {foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}
                {if $tabklotz2.position=="4"}
                 <div class="content" id="{$tab2.title}">
                          <h2>{$tab2.title}</h2>
                          <p>{$tab2.tabstext} </p>
                 </div>
                 {/if}
              {/foreach}
              {if $tabklotz2.position=="4"}
               </div>
           </div>
           {/if}
   {/foreach}







     <div class="arrowlistmenu">

    <ul >
          {foreach from=$sbmenue1 item="sbmenue2" name=sbmen2}

           {if $sbmenue2.position=="4"}
            <br/><h3 ><a  href="{$sbmenue1.href}" title="{$sbmenue1.title} "{if $sbmenue1.target=='true'} target="_blank"{/if}>{$sbmenue2.title}</a></h3>

            <ul>
              {foreach from=$sbmenue2.menuepoints item="menue2" name=sbmenues1}
                <li><a href="{$menue2.href}" title="{$menue2.title}"{if $menue2.target=='1'} target="_blank"{/if}{if $menue2.target=='2'} target="_blank" rel="nofollow"{/if}>{$menue2.title}-{$menue2.target}</a></li>
              {/foreach}
            </ul>

           {/if}

          {/foreach}
          {if $sbmenue2.position!="4"} {/if}
     </ul>
 </div>





            {serendipity_fetchPrintEntries category=$template_option.catx1 full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_rcol.tpl"}
            {serendipity_fetchPrintEntries category=$template_option.catx2 full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_rcol.tpl"}

     <div class="arrowlistmenu">

    <ul >
          {foreach from=$sbmenue1 item="sbmenue2" name=sbmen2}

           {if $sbmenue2.position=="6"}
            <br/><h3 ><a  href="{$sbmenue1.href}" title="{$sbmenue1.title} "{if $sbmenue1.target=='true'} target="_blank"{/if}>{$sbmenue2.title}</a></h3>

            <ul>
              {foreach from=$sbmenue2.menuepoints item="menue2" name=sbmenues1}
                <li><a href="{$menue2.href}" title="{$menue2.title}"{if $menue2.target=='1'} target="_blank"{/if}{if $menue2.target=='2'} target="_blank" rel="nofollow"{/if}>{$menue2.title}-{$menue2.target}</a></li>
              {/foreach}
            </ul>

           {/if}

          {/foreach}
          {if $sbmenue2.position!="6"} {/if}
     </ul>
 </div>

            {serendipity_fetchPrintEntries category=$template_option.catx3 full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_rcol.tpl"}


{foreach from=$tabklotz1 item="tabklotz2" name=klotz2}

 {assign var="windowprint" value="0"}

                {foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}
                  {if $tabklotz2.position=="6"} {if $windowprint=="0"}  {assign var="windowprint" value="1"} <div class="tabcontainer">  <ul class="tabnav"> {/if} <li><a href="#{$tab2.title}"> {$tab2.title} </a></li>  {/if}
                {/foreach}
                 {if $windowprint=="1"} </ul> <div class="tabcontents {$tabklotz2.tabklotzname}">  {/if}
               {foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}
                {if $tabklotz2.position=="6"}
                 <div class="content" id="{$tab2.title}">
                          <h2>{$tab2.title}</h2>
                          <p>{$tab2.tabstext} </p>
                 </div>
                 {/if}
              {/foreach}
              {if $tabklotz2.position=="6"}
               </div>
           </div>
           {/if}
   {/foreach}


   {serendipity_fetchPrintEntries category=$template_option.catx4 full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_rcol.tpl"}










     <div class="arrowlistmenu">

    <ul >
          {foreach from=$sbmenue1 item="sbmenue2" name=sbmen2}

           {if $sbmenue2.position=="5"}
            <br/><h3 ><a  href="{$sbmenue1.href}" title="{$sbmenue1.title} "{if $sbmenue1.target=='true'} target="_blank"{/if}>{$sbmenue2.title}</a></h3>

            <ul>
              {foreach from=$sbmenue2.menuepoints item="menue2" name=sbmenues1}
                <li><a href="{$menue2.href}" title="{$menue2.title}"{if $menue2.target=='1'} target="_blank"{/if}{if $menue2.target=='2'} target="_blank" rel="nofollow"{/if}>{$menue2.title}-{$menue2.target}</a></li>
              {/foreach}
            </ul>

           {/if}

          {/foreach}
          {if $sbmenue2.position!="5"} {/if}
     </ul>
 </div>


 {foreach from=$tabklotz1 item="tabklotz2" name=klotz2}

  {assign var="windowprint" value="0"}

                 {foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}
                   {if $tabklotz2.position=="5"} {if $windowprint=="0"}  {assign var="windowprint" value="1"} <div class="tabcontainer">  <ul class="tabnav"> {/if} <li><a href="#{$tab2.title}"> {$tab2.title} </a></li>  {/if}
                 {/foreach}
                  {if $windowprint=="1"} </ul> <div class="tabcontents {$tabklotz2.tabklotzname}">  {/if}
                {foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}
                 {if $tabklotz2.position=="5"}
                  <div class="content" id="{$tab2.title}">
                           <h2>{$tab2.title}</h2>
                           <p>{$tab2.tabstext} </p>
                  </div>
                  {/if}
               {/foreach}
               {if $tabklotz2.position=="5"}
                </div>
            </div>
            {/if}
   {/foreach}



        </div><!-- /#rightcol -->


{elseif $view2 == "404"}
    <!-- if some page does not exist and/or cannot be found -->
    {include file="./404.tpl"}
{else}
    {$CONTENT}
{/if}
    </div><!-- /#content -->

    <div id="sidebar">&nbsp;







    {foreach from=$tabklotz1 item="tabklotz2" name=klotz2}

     {assign var="windowprint" value="0"}

                    {foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}
                      {if $tabklotz2.position=="0"} {if $windowprint=="0"}  {assign var="windowprint" value="1"} <div class="tabcontainer">  <ul class="tabnav"> {/if} <li><a href="#{$tab2.title}"> {$tab2.title} </a></li>  {/if}
                    {/foreach}
                     {if $windowprint=="1"} </ul> <div class="tabcontents {$tabklotz2.tabklotzname}">  {/if}
                   {foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}
                    {if $tabklotz2.position=="0"}
                     <div class="content" id="{$tab2.title}">
                              <h2>{$tab2.title}</h2>
                              <p>{$tab2.tabstext} </p>
                     </div>
                     {/if}
                  {/foreach}
                  {if $tabklotz2.position=="0"}
                   </div>
               </div>
               {/if}
   {/foreach}









  <div class="arrowlistmenu">
                          {foreach from=$sbmenue1 item="sbmenue3" name=sbmen3}
                           {if $sbmenue3.position=="0"}
                            <h3 class="headerbar"><a  href="{$sbmenue3.href}" title="{$sbmenue3.title} "{if $sbmenue3.target=='true'} target="_blank"{/if}>{$sbmenue3.title}</a></h3>
                            <ul>
                              {foreach from=$sbmenue3.menuepoints item="menue3" name=sbmenues3}
                                 <li><a href="{$menue3.href}" title="{$menue3.title}"{if $menue3.target=='1'} target="_blank"{/if}{if $menue3.target=='2'} target="_blank" rel="nofollow"{/if}>{$menue3.title}</a></li>
                              {/foreach}
                           </ul>
                           {/if}
                          {/foreach}
                           {if $sbmenue1.position!="0"} {/if}

               </div>


{if $rightSidebarElements > 0}
    {serendipity_printSidebar side="right"}
{/if}
                         <div class="arrowlistmenu">
                              {foreach from=$sbmenue1 item="sbmenue3" name=sbmen3}
                               {if $sbmenue3.position=="1"}
                                <h3 class="headerbar"><a  href="{$sbmenue3.href}" title="{$sbmenue3.title} "{if $sbmenue3.target=='true'} target="_blank"{/if}>{$sbmenue3.title}</a></h3>
                                <ul>
                                  {foreach from=$sbmenue3.menuepoints item="menue3" name=sbmenues3}
                                     <li><a href="{$menue3.href}" title="{$menue3.title}"{if $menue3.target=='1'} target="_blank"{/if}{if $menue3.target=='2'} target="_blank" rel="nofollow"{/if}>{$menue3.title}</a></li>
                                  {/foreach}
                               </ul>
                               {/if}
                              {/foreach}
                               {if $sbmenue1.position!="1"} {/if}
                         </div>






 {foreach from=$tabklotz1 item="tabklotz2" name=klotz2}

 {assign var="windowprint" value="0"}

                {foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}
                  {if $tabklotz2.position=="1"} {if $windowprint=="0"}  {assign var="windowprint" value="1"} <div class="tabcontainer">  <ul class="tabnav"> {/if} <li><a href="#{$tab2.title}"> {$tab2.title} </a></li>  {/if}
                {/foreach}
                 {if $windowprint=="1"} </ul> <div class="tabcontents {$tabklotz2.tabklotzname}">  {/if}
               {foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}
                {if $tabklotz2.position=="1"}
                 <div class="content" id="{$tab2.title}">
                          <h2>{$tab2.title}</h2>
                          <p>{$tab2.tabstext} </p>
                 </div>
                 {/if}
              {/foreach}
              {if $tabklotz2.position=="1"}
               </div>
           </div>
           {/if}
   {/foreach}








    </div><!-- /#sidebar -->



 {if not $category_info.categoryid ==''}
  {foreach from=$catlinks item="catlink" name=catbar}
    {if $category_info.categoryid==$catlink.catt}
     {if $catlink.position=="2"}   {include file="./catbanner.tpl"} {/if}
    {/if}
  {/foreach}
{/if}


</div><!-- /#page -->


{/if}


{if not $category_info.categoryid ==''}
  {foreach from=$catlinks item="catlink" name=catbar}
    {if $category_info.categoryid==$catlink.catt}
     {if $catlink.position=="3"}   {include file="./catbanner.tpl"} {/if}
    {/if}
  {/foreach}
{/if}



 <!-- /#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: -->



 <div id="footerframe"  >

  {if $template_option.enablefooter == 'true'}


   <div id="footerbox1">

                {if $template_option.sidebarpos=="0"}{if $leftSidebarElements > 0} {serendipity_printSidebar side="left"} {/if} {/if}
 		{foreach from=$tabklotz1 item="tabklotz2" name=klotzf}
  		    {assign var="windowprint" value="0"}
                 	{foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}{if $tabklotz2.position=="7"} {if $windowprint=="0"}  {assign var="windowprint" value="1"} <div class="tabcontainer">  <ul class="tabnav"> {/if} <li><a href="#{$tab2.title}"> {$tab2.title} </a></li>  {/if} {/foreach}
                 	{if $windowprint=="1"} </ul> <div class="tabcontents {$tabklotz2.tabklotzname}">  {/if}
               		{foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1}{if $tabklotz2.position=="7"}<div class="content" id="{$tab2.title}"><h2>{$tab2.title}</h2><p>{$tab2.tabstext} </p> </div> {/if} {/foreach}
                 	{if $tabklotz2.position=="7"}  </div> </div> {/if}
   		{/foreach}

               <div class="arrowlistmenu">
	          {foreach from=$sbmenue1 item="sbmenue3" name=sbmen3}
	             {if $sbmenue3.position=="7"}
	                <h3 class="headerbar"><a  href="{$sbmenue3.href}" title="{$sbmenue3.title} "{if $sbmenue3.target=='true'} target="_blank"{/if}>{$sbmenue3.title}</a></h3>
	                <ul> {foreach from=$sbmenue3.menuepoints item="menue3" name=sbmenues3}<li><a href="{$menue3.href}" title="{$menue3.title}"{if $menue3.target=='1'} target="_blank"{/if}{if $menue3.target=='2'} target="_blank" rel="nofollow"{/if}>{$menue3.title}</a></li> {/foreach}</ul>
	             {/if}
	          {/foreach}
	          {if $sbmenue1.position!="7"} {/if}
               </div>
   </div><!-- /#footerbox1 -->


<!-- /#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: -->


   <div id="footerbox2">


                {if $template_option.sidebarpos=="1"} {if $leftSidebarElements > 0} {serendipity_printSidebar side="left"} {/if}  {/if}
 		{foreach from=$tabklotz1 item="tabklotz2" name=klotzf}
 		    {assign var="windowprint" value="0"}
                 	{foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1} {if $tabklotz2.position=="8"} {if $windowprint=="0"}  {assign var="windowprint" value="1"} <div class="tabcontainer">  <ul class="tabnav"> {/if} <li><a href="#{$tab2.title}"> {$tab2.title} </a></li>  {/if} {/foreach}
                 	{if $windowprint=="1"} </ul> <div class="tabcontents {$tabklotz2.tabklotzname}">  {/if}
                 	{foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1} {if $tabklotz2.position=="8"}<div class="content" id="{$tab2.title}"><h2>{$tab2.title}</h2> <p>{$tab2.tabstext} </p></div> {/if}{/foreach}
                 	{if $tabklotz2.position=="8"}</div> </div> {/if}
   		{/foreach}


                <div class="arrowlistmenu">
                  {foreach from=$sbmenue1 item="sbmenue3" name=sbmen3}
                     {if $sbmenue3.position=="8"}
                         <h3 class="headerbar"><a  href="{$sbmenue3.href}" title="{$sbmenue3.title} "{if $sbmenue3.target=='true'} target="_blank"{/if}>{$sbmenue3.title}</a></h3>
                         <ul>  {foreach from=$sbmenue3.menuepoints item="menue3" name=sbmenues3}  <li><a href="{$menue3.href}" title="{$menue3.title}"{if $menue3.target=='1'} target="_blank"{/if}{if $menue3.target=='2'} target="_blank" rel="nofollow"{/if}>{$menue3.title}</a></li>  {/foreach}  </ul>
                      {/if}
                  {/foreach}
                  {if $sbmenue1.position!="8"} {/if}

                </div>
   </div><!-- /#footerbox2 -->

<!-- /#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: -->

   <div id="footerbox3">
              {if $template_option.sidebarpos=="2"} {if $leftSidebarElements > 0} {serendipity_printSidebar side="left"} {/if}   {/if}
 		{foreach from=$tabklotz1 item="tabklotz2" name=klotzf}
 		    {assign var="windowprint" value="0"}
                 	{foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1} {if $tabklotz2.position=="9"} {if $windowprint=="0"}  {assign var="windowprint" value="1"} <div class="tabcontainer">  <ul class="tabnav"> {/if} <li><a href="#{$tab2.title}"> {$tab2.title} </a></li>  {/if} {/foreach}
                 	{if $windowprint=="1"} </ul> <div class="tabcontents {$tabklotz2.tabklotzname}">  {/if}
                 	{foreach from=$tabklotz2.tabs item="tab2" name=sbmenues1} {if $tabklotz2.position=="9"}<div class="content" id="{$tab2.title}"><h2>{$tab2.title}</h2> <p>{$tab2.tabstext} </p></div> {/if}{/foreach}
                 	{if $tabklotz2.position=="9"}</div> </div> {/if}
   		{/foreach}

              <div class="arrowlistmenu">
	             {foreach from=$sbmenue1 item="sbmenue3" name=sbmen3}
	                     {if $sbmenue3.position=="9"}
	                         <h3 class="headerbar"><a  href="{$sbmenue3.href}" title="{$sbmenue3.title} "{if $sbmenue3.target=='true'} target="_blank"{/if}>{$sbmenue3.title}</a></h3>
	                          <ul>  {foreach from=$sbmenue3.menuepoints item="menue3" name=sbmenues3}	<li><a href="{$menue3.href}" title="{$menue3.title}"{if $menue3.target=='1'} target="_blank"{/if}{if $menue3.target=='2'} target="_blank" rel="nofollow"{/if}>{$menue3.title}</a></li>  {/foreach}</ul>
	                     {/if}
	             {/foreach}
	             {if $sbmenue1.position!="9"}  {/if}
	      </div>
    </div><!-- /#footerbox3 -->





{/if}  <!-- /#template_option.enablefooter true -->




   <div id="footertext">
      {if $template_option.sidebarpos=="3"}  {if $leftSidebarElements > 0}     {serendipity_printSidebar side="left"} {/if}  {/if}
      <br/>  &#169; {$date|@formatTime:'%Y'} <span class="url fn org">{$blogTitle}</span> |
      <a href="{$serendipityBaseURL}feeds/index.rss2">{$CONST.ENTRIES}&nbsp;(RSS)</a> | <a href="{$serendipityBaseURL}feeds/comments.rss2">{$CONST.COMMENTS}&nbsp;(RSS)</a> |&nbsp; Theme <a href="http://www.plusneun.de/index.php" title="plusneun.de">plusneun.de</a>
		Tabs:<a target="_blank" href="http://www.cssplay.co.uk/">CSSplay</a>
    </div> <!-- /#footertext -->

 </div>
  .


{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</div>



</body>
</html>
{/if}
