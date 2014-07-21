{if $is_embedded != true}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="de" lang="de">
<head>
<title>{$head_title|@default:$blogTitle} {if $head_subtitle} - {$head_subtitle}{/if}</title>
<!--
Serendipity-Template by Vladimir Simovic aka Perun
www.vlad-design.de | www.perun.net
-->
<meta http-equiv="content-type" content="text/html; charset={$head_charset}" />
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
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}

<div id="mainpane">

<div id="banner">
<div id="header">
<h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle}</a></h1>&nbsp;| <h2><a href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></h2></div>
</div>

<div id="sidebar">

{if $rightSidebarElements > 0}
<div id="serendipityRightSideBar">{serendipity_printSidebar side="right"}</div>
{/if}

{if $leftSidebarElements > 0}
<div id="serendipityLeftSideBar">{serendipity_printSidebar side="left"}</div>
{/if}

</div>

<div id="content"><!--Inhalt-->
{$CONTENT}
</div><!--/Inhalt-->

<div style="clear: both;">&nbsp;</div>

<div class="copyright">Powered by <a href="http://www.s9y.org" title="a PHP Weblog/Blog software">Serendipity</a> | Template by <a href="http://www.perun.net" title="Vladimir Simovic aka Perun: www.vlad-design.de and www.perun.net">Perun</a></div>

</div>
{/if}

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
