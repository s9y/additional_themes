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
    <title> Spiritual Enlightenment Truth Realization Non-Duality Blog By Edward Traversa</title>
	<meta name="author" content="Edward Traversa for Spiritual Enlightenment" />
    <meta name="keywords" content="Spiritual Enlightenment, Spiritual Blog, Spiritual, Truth Realization, enlightenment, cosmic consciousness, illumanition, God, Awakening, Being, Ultimate Truth, Buddha, Becoming, Eddie Traversa" />
    <meta name="description" content="Spiritual Enlightenment, Spiritual Blog, Non-Duality, Spiritual, Spiritual Awakening, Spiritual Development, Enlightenment, illumanition, consciousness, God Realization  by Eddie Traversa" />
	<meta name="Copyright"  content="Copyright (c) 2005 Edward Traversa" />
	<meta name="revisit-after" content="3 Days" />
    <meta http-equiv="Content-Language" content="en-us" />
    <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
    <meta name="Powered-By" content="Serendipity v.{$head_version}" />
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
    <link rel="Shortcut Icon" href="favicon.ico" type="image/x-icon" title="spiritual enlightenment icon" />

{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}

{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
<!--  
Truth Template v.1 provided by Eddie Traversa 2005
  please leave note this intact.
  email:etraversa@dhtmlnirvana.com
  url: http://www.truthrealization.com/
  url: http://www.dhtmlnirvana.com/
   -->
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}
<div id="serendipity_banner">
    <h1><a class="homelink1" href="{$serendipityBaseURL}" title="Spiritual Enlightenment" >Spiritual Enlightenment:Truth Realization</a></h1>
    <h2><a class="homelink2" href="{$serendipityBaseURL}" title="Truth Realization">Wake Up! You Already Are That:::</a></h2>
	<div id="urlLYR" class="urllogo">
	:::www.truthrealization.com::: 
	</div>
</div>

<table id="mainpane">
    <tr>
{if $leftSidebarElements > 0}
        <td id="serendipityLeftSideBar" valign="top">{serendipity_printSidebar side="left"}</td>
{/if}
        <td id="content" valign="top">{$CONTENT}</td>
{if $rightSidebarElements > 0}
        <td id="serendipityRightSideBar" valign="top">{serendipity_printSidebar side="right"}</td>
{/if}
    </tr>
</table>
{/if}

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
