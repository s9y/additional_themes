<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
           "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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

{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>

<div id="serendipity_banner">
    <a id="linkhome"   href="{$serendipityBaseURL}" title="Home"></a>
<!-- ADDITIONAL LINKS: UNCOMMENT TO ACTIVATE
    <a id="linkphotos" href="{$serendipityBaseURL}index.php?serendipity[subpage]=gallery" title="Photos"></a>
    <a id="linkvideos" href="{$serendipityBaseURL}pages/videos.html" title="Videos"></a>
    <a id="linkabout"  href="{$serendipityBaseURL}pages/about.html" title="About"></a>
-->
    <br style="clear: both" />
</div>

<div id="wrap">
    <table id="mainpane">
        <tr>
            <td id="content" valign="top">{$CONTENT}</td>
            <td id="serendipityRightSideBar" valign="top">
                {serendipity_printSidebar side="right"}
                {serendipity_printSidebar side="left"}
            </td>
        </tr>
    </table>
</div>

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
</body>
</html>