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
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}
<table id="mainpane" cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top">
            <table id="mainleft" cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top">
<div id="header" onclick="location.href='{$serendipityBaseURL}';" style="cursor: pointer;">
    <h1><a class="homelink1" href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle}</a></h1>
    <h2><a class="homelink2" href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></h2>
</div>
                    </td>
                </tr>
                <tr>
<td id="content" valign="top">{$CONTENT}
                    </td>
                </tr>
            </table>
        </td>
        <td valign="top">
            <table id="mainright" cellpadding="0" cellspacing="0">
                <tr>{if $leftSidebarElements > 0}
                           <td id="serendipityLeftSideBar" valign="top">
{serendipity_printSidebar side="left"}
                    </td>
                    {/if}
{if $rightSidebarElements > 0}
        <td id="serendipityRightSideBar" valign="top">
{serendipity_printSidebar side="right"}
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<div id="footer">
    <p>
    {$CONST.POWERED_BY} <a href="http://www.s9y.org">Serendipity {$serendipityVersion}</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.gohip.de/" target="_blank">Style by GoHip</a>
    </p>
</div>
{/if}

{$raw_data}

{if $is_embedded != true}
</body>
</html>
{/if}{/if}
