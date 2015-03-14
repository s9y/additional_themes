<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
<div id="container">
<a id="topofpage"></a><p class="hide">Skip to: <a href="#menu">site menu</a> | <a href="#sectionmenu">categories</a> | <a href="#main">main content</a></p>

<div id="serendipity_banner">
    <h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:50:" ..."}</a></h1>
    <h2>{$head_subtitle|@default:$blogDescription}</h2>
<a id="menu"></a>
</div>

<div id="nav">
<ul>
<li {if $startpage}class="current"{/if}><a href="{$serendipityBaseURL}"><span>{$CONST.BLOG_HOME}</span></a></li>
    {if $serendipityVersion < 1.1}
        <!-- ****** Change navbar links here ****** -->
        <li><a href="#"><span>Link</span></a></li>
        <li><a href="#"><span>Link</span></a></li>
        <li><a href="#"><span>Link</span></a></li>
        <li><a href="#"><span>Link</span></a></li>
    {else}
        {foreach from=$navlinks item="navlink"}<li><a href="{$navlink.href}" title="{$navlink.title}"><span>{$navlink.title}</span></a></li>{/foreach}
    {/if}
</ul>
<p class="hide"><a href="#topofpage">{$CONST.BACK_TO_TOP}</a></p>
</div>

<div id="wrap1">
<div id="wrap2">

<div id="topbox">
<strong>
    <a href="{$serendipityBaseURL}">{$CONST.BLOG_HOME}</a>
    {if ($head_title && !$entry.title) || ($head_title != $entry.title)}
      {if $entry.title}&raquo;{/if} {$category.category_name}
    {elseif $head_title && $entry.title}
    {if $category.category_name}
      &raquo; <a href="{$category.category_link}" title="{$category.category_description}">{$category.category_name}</a>
    {/if}
      {if $entry.title == $head_title}
        &raquo; {$entry.title|truncate:40:" ...":true}
      {/if}
    {elseif $head_subtitle}
        &raquo; {$head_subtitle}
    {/if}
    {if $staticpage_pagetitle && !$entry.title}
      &raquo; {$staticpage_headline}
    {/if}
</strong>
</div>

<div id="leftside">
{if $leftSidebarElements < 1 && $rightSidebarElements > 0}
{serendipity_printSidebar side="right"}
{else}
{serendipity_printSidebar side="left"}
{/if}
</div>

{if not $is_single_entry && not $staticpage_articleformat}
{if $leftSidebarElements > 0}
<div id="rightside">
{serendipity_printSidebar side="right"}
</div><a id="main"></a>
<div id="content">
{else}
<div id="contentalt">{/if}
{$CONTENT}</div></div>
{else}
<div id="contentalt">
{$CONTENT}</div></div>
{/if}

<div id="footer">Design by <a href="http://andreasviklund.com">Andreas Viklund</a> | Ported to <a href="http://www.s9y.org">s9y</a> by <a href="http://www.carlgalloway.com">Carl</a> | <a href="#topofpage">{$CONST.BACK_TO_TOP}</a></div>
</div></div>
</body>
</html>