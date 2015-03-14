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
        <link rel="alternate" type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
        <link rel="alternate" type="application/x.atom+xml" title="{$blogTitle} Atom feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom10.xml" />
        {if $entry_id}
            <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
        {/if}
        {serendipity_hookPlugin hook="frontend_header"}
    </head>

{if $staticpage_pagetitle}
<body id="{$staticpage_pagetitle}">
{else}
<body id="Weblog">
{/if}
<div id="container">
    <div id="serendipity_banner">
    <div class="logo">
        <a href="{$serendipityBaseURL}"><img src="{serendipity_getFile file="img/logo.png"}" alt="Logo" /></a>
    </div>
        <div id="navigation">
            <ul>
                <li class="nav1"><a href="{$serendipityBaseURL}index.php" title="button 1" accesskey="1">BUTTON1</a></li>
                <li class="nav2"><a href="{$serendipityBaseURL}index.php" title="button 2" accesskey="2">BUTTON2</a></li>
                <li class="nav3"><a href="{$serendipityBaseURL}index.php" title="button 3" accesskey="3">BUTTON3</a></li>
                <li class="nav4"><a href="{$serendipityBaseURL}index.php" title="button 4" accesskey="4">BUTTON4</a></li>
                <!-- ADDITIONAL LINKS: UNCOMMENT TO ACTIVATE: remember to add them to style.css as well
                <li class="nav4"><a href="{$serendipityBaseURL}index.php?/pages/contact.html" title="Contact" accesskey="4">Contact</a></li>
                -->
            </ul>
        </div>
        <br style="clear: both" />
    </div>
    <div id="mainpane">
        <div id="content">{$CONTENT}</div>
            {if $rightSidebarElements > 0}
                <div id="serendipityRightSideBar">{serendipity_printSidebar side="right"}</div>
            {/if}
            {if $leftSidebarElements > 0}
                <div id="serendipityLeftSideBar">{serendipity_printSidebar side="left"}</div>
            {/if}
        <div style="clear: both;">&nbsp;</div>
    </div>

    <div id="footer">
        <div id="serendipity_breadcrumb"><a href="{$serendipityBaseURL}">Home</a>
            {if ($head_title && !$entry.title) || ($head_title != $entry.title)}
                  :: {$category.category_name}
            {elseif $head_title && $entry.title}
                :: <a href="{$category.category_link}">{$category.category_name}</a>
            {if $entry.title == $head_title}
                :: {$entry.title}
            {/if}
            {/if}
            {if $isStaticpage && !$entry.title}
                  :: {$StaticpageTitle}
            {/if}
        </div>
        <div id="credits">
            Blix-Theme by <a href="http://www.kingcosmonaut.de/" title="Designer of This template" target="_blank">Sebastian Schmieg</a>
            | Ported by <a href="http://taeglichanders.de/" title="Template ported by" target="_blank">Christian Hoffmann</a>
            | Powered by <a href="http://www.s9y.org" title="The best Blog System in the world" target="_blank">Serendipity</a>
        </div>
    </div>

    {$raw_data}
    {serendipity_hookPlugin hook="frontend_footer"}

</div>
</body>
</html>