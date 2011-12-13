<!-- Wee nee d this -->




{if $is_embedded != true}
{if $is_xhtml}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">{else}
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
           "http://www.w3.org/TR/html4/loose.dtd">
{/if}

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang}" lang="{$lang}">
<head>
    <title>{$head_title|@default:$blogTitle} {if $head_subtitle} - {$head_subtitle}{/if}</title>
    <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
    <meta name="Powered-By" content="Serendipity v.{$head_version}" />
    	<link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
    {if $leftSidebarElements > 0 and $rightSidebarElements > 0}
       	<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="style_1024.css"}" />
    {/if}
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}
{serendipity_hookPlugin hook="frontend_header"}
{if $head_version>=1.1}
	<style type="text/css">
	<!--
		{if $template_option.freshyheader!="" and $template_option.freshyheader!="custom"}
			
			#title_image
			{ldelim}
				background-image:url("{$template_option.freshyheader}") !important;
			{rdelim}
		{elseif $template_option.freshyheader=="custom" and $template_option.custom_freshyheader!=""}
			
			#title_image
			{ldelim}
				background-image:url("{$template_option.custom_freshyheader}") !important;
			{rdelim}
		{/if}
		
		{if $template_option.navbg!="green"}
			.menu li.current_page_item a {ldelim} color:#fff !important;{rdelim}
			.menu li a {ldelim} background-image:url("{serendipity_getFile file="images/menu/menu_triple_"|cat:$template_option.navbg|cat:".gif"}"); {rdelim}
			.menu li a.first_menu {ldelim} background-image:url("{serendipity_getFile file="images/menu/menu_start_triple_"|cat:$template_option.navbg|cat:".gif"}"); {rdelim}
			.menu li a.last_menu,
			.menu li a.last_menu_off{ldelim} background-image:url("{serendipity_getFile file="images/menu/menu_end_triple_"|cat:$template_option.navbg|cat:".gif"}"); {rdelim}
		{/if}
	-->
	</style>
{else}
<!-- users of s9y <1.1 enter options here -->	
{/if}
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}

<div id="page">
	
	<!-- header -->
	<div id="header">
		<div id="title">
			<h1><a href="{$serendipityBaseURL}"><span>{$head_title|@default:$blogTitle}</span></a></h1>
			<div class="description">
				<small>{$head_subtitle|@default:$blogDescription}</small>
			</div>
		</div><div id="title_image"></div>
	</div>
<div id="frame">
	<ul class="menu">
		
		{if $head_version<1.1}
			<li class="{if $startpage}current_{/if}page_item">
				<a class="first_menu" href="{$serendipityBaseURL}">{$CONST.FRESHY_NAVLINK_HOME}</a>
			</li>	
			<!-- users of s9y <1.1 enter links here -->
			<!-- Sample link 
			<li class="{if $currpage=="http://yoursite.com"}current_{/if}page_item"><a href="http://yoursite.com" title="Junior parties">Junior parties</a></li>
			-->
			<li class="{if $currpage=="http://yoursite.com"}current_page_item{/if} last_menu"><a href="#" class="{if $currpage=="http://yoursite.com"}last_menu{/if} last_menu_off" ></a></li>
		{else}
			<li class="{if $startpage}current_{/if}page_item">
				<a class="first_menu" href="{$serendipityBaseURL}">{$template_option.homelinklabel}</a>
			</li>
			{foreach from=$navlinks item="navlink"}
					{if !($navlink.href=="#" || $navlink.href=="")}
						<li class="{if $currpage==$navlink.href}current_{/if}page_item"><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
					{/if}
			{/foreach}	
		    <li class="{if $currpage==$template_option.navlinkurllast}current_page_item {/if}last_menu"><a href="{$template_option.navlinkurllast}" class="{if $currpage==$template_option.navlinkurllast}last_menu_off {/if}last_menu" title="{$template_option.navlinklabellast}">{$template_option.navlinklabellast}</a></li>
		{/if}
	</ul>
<hr style="display:none"/>
	<div id="content">

        {$CONTENT}</div>
      	{if $leftSidebarElements > 0 and $rightSidebarElements > 0}
        	<div class="leftsidebar"><div>{serendipity_printSidebar side="left"}</div></div>
		
        	<div class="rightsidebar"><div>{serendipity_printSidebar side="right"}</div></div>
		{else}
			{if $rightSidebarElements > 0}
        		<div id="sidebar"><div>{serendipity_printSidebar side="right"}</div></div>
			{elseif $leftSidebarElements > 0}
				<div id="sidebar"><div>{serendipity_printSidebar side="left"}</div></div>
        	{/if}
		{/if}
	{/if}	

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
<br style="clear:both" />
</div><!-- frame -->
<div id="footer">
	<small class="footer_content">
		<!-- <a href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2"><img alt="rss" src="{serendipity_getFile file=images/rss_blog.gif}"/></a>
		<a href="http://validator.w3.org/check?uri=referer"><img alt="valid xhtml 1.1" src="{serendipity_getFile file=images/valid_xhtml11_80x15_2.png}"/></a>
		<a href="http://www.jide.fr"><img alt="design by jide" src="{serendipity_getFile file=images/micro_jide.png}"/></a> -->
		
		<a href="http://validator.w3.org/check?uri=referer">Valid XHTML</a> | 
		<a href="http://www.jide.fr">Design by jide</a> |
		<a href="http://abdussamad.com" title="serendipity templates">Serendipity templates</a>
	</small>
	
</div>
</div><!-- page-->
{if $is_embedded != true}
</body>
</html>
{/if}
