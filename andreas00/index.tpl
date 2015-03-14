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
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}
<!-- Ported to Serendipity by Carl Galloway [http://www.carlgalloway.com] -->
{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

<body><p class="hide">Skip to: <a href="#sectionmenu">categories</a> | <a href="#main">main content</a></p>

<div id="wrap">

<div id="header">
<h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:40:' ...'}</a></h1>
<p><strong>{$head_subtitle|@default:$blogDescription}</strong></p></div>

{if $leftSidebarElements > 0}<div id="LeftSideBar">{serendipity_printSidebar side="left"}</div>{/if}{if $rightSidebarElements > 0}<div id="RightSideBar">{serendipity_printSidebar side="right"}</div>{/if}
{if $rightSidebarElements < 1}
	<div id="contentright">
{elseif $leftSidebarElements < 1}
	<div id="contentleft">
{else}
	<div id="content">
{/if}
	<a id="main"></a>{$CONTENT}{$raw_data}
	</div>

<div id="footer">
<p>Design by <a href="http://andreasviklund.com">Andreas Viklund</a> | Ported to <a href="http://www.s9y.org">Serendipity</a> by <a href="http://www.carlgalloway.com/categories/9-Downloads">Carl</a></p>
<!--[if IE]><p><img src="{serendipity_getFile file="img/warning.gif"}" alt="warning" /> Warning you are using a non-secure and non-standards compliant browser. <a href="http://www.spreadfirefox.com" title="Get Firefox!" target="_blank">Get a better browser</a>!</p>
  	<![endif]-->
</div>

</div>
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}