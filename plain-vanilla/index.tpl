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

<div id="container">
<div id="content">

<div id="header" class="clearfix" onclick="location.href='{$serendipityBaseURL}';" style="cursor: pointer;">
    <h1>{$blogTitle}</h1>
       <!-- div id="nav">
       <ul>
            <li><a href="">Link1</a></li>
            <li><a href="">Link2</a></li>
            <li><a href="">Link3</a></li>
            <li><a href="">Link4</a></li>
        </ul>
       </div -->
</div>
<h4>{$head_subtitle|@default:$blogDescription}</h4>
    
<div id="bannertop">
</div>

{$CONTENT}
</div>

{if $rightSidebarElements > 0}
    <div id="sidebar" class="clearfix">{serendipity_printSidebar side="right"}</div>
{/if}

<div id="footer">
</div>

</div>
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
