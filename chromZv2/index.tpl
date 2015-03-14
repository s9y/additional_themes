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

{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}
<div id="header">
    <h1><a  href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle}</a></h1>
    <h2><a  href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></h2>
</div>
<div id="menu">
	<ul>

				        {foreach from=$navlinks item="navlink"}
				        <li><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
				        {/foreach}

		</ul>
</div>

<div id="mainpane">
    <div id="col-two">
        {$CONTENT}
     </div>

{if $rightSidebarElements > 0}
        <div id="serendipityRightSideBar" >{serendipity_printSidebar side="right"}</div>
{/if}

{if $leftSidebarElements > 0}
       <div id="serendipityLeftSideBar"> {serendipity_printSidebar side="left"}</div>
{/if}


</div>
<div id="footer">
    <p>
    <!-- do not remove. See http://www.freecsstemplates.org/license/ (licensed under a Creative Commons Attribution 2.5 License) -->
    {$CONST.POWERED_BY} <a href="http://www.s9y.org">Serendipity {$serendipityVersion}</a>.<br />
    Design<a href="http://www.freecsstemplates.org/">:Free CSS Templates</a> ported by <a href="http://katalog-it.de">RL</a>


    </p>
</div>
{/if}

{$raw_data}

{if $is_embedded != true}
</body>
</html>
{/if}
