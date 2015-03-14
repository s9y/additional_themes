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
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
    <link rel="alternate" type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
   <link rel="alternate" type="application/x.atom+xml" title="{$blogTitle} Atom feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}
<!--[if IE]>
<style type="text/css">
div.serendipitySideBarItem {ldelim}padding: 20px 0 10px 2px; {rdelim}
.serendipitySideBarContent {ldelim}padding-left:10px; {rdelim}
</style>
<![endif]-->
{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}
<div id="bigholder">
	<div id="serendipity_banner"><div id="barsinister">
		<h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:50:' ...'}</a></h1>
		<h2>{$head_subtitle|@default:$blogDescription|truncate:50:" ...":true}</h2></div>
	</div>
<div id="mainpane">
        <div id="content">{$CONTENT}</div>
        <div id="serendipitySideBar">{serendipity_printSidebar side="right"}{serendipity_printSidebar side="left"}
	<div class="serendipitySideBarItem credits">
	<h3 class="serendipitySideBarTitle credits">Credits</h3>
	<div class="serendipitySideBarContent">Design by <a href="http://www.hastalasiesta.org">Martin</a><br />Code by <a href="http://www.carlgalloway.com">Carl</a></div>
</div>
{/if}
</div>
<div id="footer">
&nbsp;
</div>
{$raw_data}
</div>
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
