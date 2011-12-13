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
    <meta name="Powered-By" content="Serendipity v.{$head_version}" />
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}

{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
	<div id="bg">
	<div id="wrap">
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}
	<div id="banner"><div id="identity">
<h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:60:" ..."}</a></h1><h2><a href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></h2></div>
	<div id="about-snippet">
	{if $head_version < 1.1}
	<p>Welcome to my site, please bookmark this page. Read all about me. <a href="#"> More &raquo;</a></p>
	{else}
	<p>{$template_option.about} <a href="{$template_option.aboutpageurl}"> More &raquo;</a></p>
	{/if}
	</div> 
    	</div>
<div id="mainpane">
<div id="content">
    {$CONTENT}
</div>
<div id="leftcolumn">
	<div id="sidebar">
		{serendipity_printSidebar side="right"}{serendipity_printSidebar side="left"}
	</div>
	<div id="clearingdiv">&nbsp;</div>
</div>
	<div id="footer">
		<p>{if $head_version < 1.1}
	<!-- ****** Change footer links here ****** --><a href="#">Impressum</a> | <a href="#">Contact</a>{else}<a href="{$template_option.navlink1url}" title="{$template_option.navlink1text}">{$template_option.navlink1text}</a> | <a href="{$template_option.navlink2url}" title="{$template_option.navlink2text}">{$template_option.navlink2text}</a>{/if} | <a href="{$serendipityBaseURL}serendipity_admin.php">{if $is_logged_in}Admin Suite{else}Login{/if}</a> | Design by <a href="http://www.carlgalloway.com/authors/4-ceejay">ceejay</a></p>
	</div>
</div></div></div>
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
