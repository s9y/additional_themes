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
<div id="mainpane">
	<div id="serendipity_banner">
	<h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:80:" ..."}</a></h1>
	</div>

	<div id="content">{$CONTENT}</div>

      <div id="sidebar">
		{serendipity_printSidebar side="right"}
		{serendipity_printSidebar side="left"}
	</div>
<div id="footer">Pink Lilies theme designed by <a href="http://blog.detlog.org/" title="Naoko's Blog"><strong>Naoko M.</strong></a> - Ported to <a href="http://www.s9y.org" title="Serendipity Weblog"><strong>s9y</strong></a> by <a href="http://www.carlgalloway.com" title="Carl's Blog"><strong>Carl</strong></a>
</div>
{$raw_data}
</div>
</body>
</html>