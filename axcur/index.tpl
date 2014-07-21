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
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
    {if $entry_id}
       <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
    {/if}
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
     <link rel="stylesheet" href="{serendipity_getFile file="style1.css"}" type="text/css" media="screen" />
    <!--[if IE 6]><link rel="stylesheet" href="{serendipity_getFile file="style.ie6.css"}" type="text/css" media="screen" /><![endif]-->
    <!--[if IE 7]><link rel="stylesheet" href="{serendipity_getFile file="style.ie7.css"}" type="text/css" media="screen" /><![endif]-->

 
{serendipity_hookPlugin hook="frontend_header"}
</head>
<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}
  <div id="wrap">
{/if}
{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
<div id="footer">	
</div>
</div>
 <div id="art-page-background-simple-gradient">
    </div>
    <div id="art-page-background-glare">
        <div id="art-page-background-glare-image"></div>
    </div>
    <div id="art-main">
        <div class="art-Sheet">
            <div class="art-Sheet-tl"></div>
            <div class="art-Sheet-tr"></div>
            <div class="art-Sheet-bl"></div>
            <div class="art-Sheet-br"></div>
            <div class="art-Sheet-tc"></div>
            <div class="art-Sheet-bc"></div>
            <div class="art-Sheet-cl"></div>
            <div class="art-Sheet-cr"></div>
            <div class="art-Sheet-cc"></div>
            <div class="art-Sheet-body">
                <div class="art-Header">
                    <div class="art-Header-png"></div>
                    <div class="art-Header-jpeg"></div>
                    <div class="art-Logo">
                        <h1 id="name-text" class="art-Logo-name"><a   href="{$serendipityBaseURL}">{$head_title|truncate:40:" ..."|@default:$blogTitle}</a></h1>
                        <div id="slogan-text" class="art-Logo-text"><a   href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></div>
                    </div>
                </div>
        {if $template_option.enablehmenue =="true"}
                <div class="art-nav">
                	<div class="l"></div>
                	<div class="r"></div>
                	<ul class="art-menu">
        <li>
        <a href="{$serendipityBaseURL}" class=" active"><span class="l"></span><span class="r"></span>{if $currpage==$serendipityBaseURL}  {/if}><span class="t">{$CONST.HOMEPAGE}</span></a></li>
         
 	{foreach from=$navlinks item="navlink" name=navbar}
       <li>
     
       <a href="{$navlink.href}"><span class="l"></span><span class="r"></span><span class="t">{$navlink.title}</span></a>

            {if $navlink.drop != "0"} <ul>  {foreach from=$navlink.dropdownentries item="sub" name=subnavbar} <li> <a {if $currpage==$sub.href}class="currentpage" {/if}href="{$sub.href}" title="{$sub.title}" >{$sub.title}</a></li>{/foreach}</ul> {/if}
       </li>
	{/foreach}	
	                		
        {if $is_logged_in}	
        <li>
        <a href="#"><span class="l"></span><span class="r"></span><span class="t">{$CONST.EDIT}</span></a>
        
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
 	 <li>
 	   <a href="{$serendipityBaseURL}/serendipity_admin.php"><span class="l"></span><span class="r"></span><span class="t">Login</span></a>
 	 </li> 
	{/if}
 </ul>
 </div>
{/if}                     
                  <div class="art-contentLayout">
                    <div class="art-sidebar1">
                         {if $leftSidebarElements > 0}{serendipity_printSidebar side="left"}{/if}
                         {if $rightSidebarElements > 0}{serendipity_printSidebar side="right"}{/if}
                         
                    </div>
                    <div class="art-content">
                    
                    {$CONTENT}
                     </div>
                </div>
                <div class="cleared"></div><div class="art-Footer">
                    <div class="art-Footer-inner">
                         
                        <div class="art-Footer-text">
                            <p>
                             {$date|@formatTime:'%Y'} <span class="url fn org">{$blogTitle}</span> |   
			          <a href="{$serendipityBaseURL}feeds/index.rss2">{$CONST.ENTRIES}&nbsp;(RSS)</a> | <a href="{$serendipityBaseURL}feeds/comments.rss2">{$CONST.COMMENTS}&nbsp;(RSS)</a> |&nbsp; Theme <a href="http://xcur.de/" title="xcur">xcur</a>
                             </p>
                        </div>
                    </div>
                    <div class="art-Footer-background"></div>
                </div>
            </div>
        </div>
        <div class="cleared"></div>
        <p class="art-page-footer">
         </p>
    </div>
 </body>
</html>
{/if}
