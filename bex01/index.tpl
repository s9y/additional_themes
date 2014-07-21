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
<!-- Originally designed by Andreas Viklund [http://andreasviklund.com] -->
<!-- Converted to Serendipity by Carl Galloway [http://www.carlgalloway.com] -->
<!-- Complete snot hacked out of it and all original graphics designed by Rebecca Hemstad [http://www.bexology.com] -->
</head>

<body>

<div id="mainpane">


<!-- ***** PRIMARY BANNER AREA ***** -->
<div id="identity">
	<h1>{$head_title|@default:$blogTitle|truncate:50:" ...":true}</h1>
	<h2>{$head_subtitle|@default:$blogDescription}</h2>
</div>

<!-- ***** NAVIGATION AREA ***** -->
<div id="navigation">
<div style="float: left;">
	<ul>
	<li class="selected"><a href="{$serendipityBaseURL}" accesskey="h">{$CONST.HOMEPAGE}</a></li>
	{if $serendipityVersion < 1.1}
		<li><a href="#">About</a></li>
		<li><a href="#">Link</a></li>
		<li><a href="#">Link</a></li>
	{else}
	<li><a href="{$template_option.navlink1url}" title="{$template_option.navlink1text}">{$template_option.navlink1text}</a></li>
	<li><a href="{$template_option.navlink2url}" title="{$template_option.navlink2text}">{$template_option.navlink2text}</a></li>
	<li><a href="{$template_option.navlink3url}" title="{$template_option.navlink3text}">{$template_option.navlink3text}</a></li>
	{/if}
	<li><a href="{$serendipityBaseURL}serendipity_admin.php">{$CONST.LOGIN}</a></li>
	</ul>
</div>


<div class="quicksearch" style="float: right;">
	<form id="searchform" action="{$serendipityBaseURL}" method="get">
		<img src="{$serendipityBaseURL}templates/bex01/img/bexmag.gif" width="21" height="15" alt="search picture" />
		<input type="hidden" name="serendipity[action]" value="search" />
	<input alt="Quicksearch" type="text" name="serendipity[searchTerm]" value="{$CONST.QUICKSEARCH}..." /></form>
</div>

</div>

<!-- ***** CONTENT AREA ***** -->
<div id="content">
	{$CONTENT}
</div>
     
     
<!-- ***** RIGHT SIDEBAR AREA ***** -->     
<div id="sidebar">

                {serendipity_printSidebar side="right"}
                {serendipity_printSidebar side="left"}
</div>


<!-- ***** FOOTER AREA ***** -->
<div id="footer"><p>Design by <a href="http://www.bexology.com">Bex</a> &amp; <a href="http://www.carlgalloway.com">Carl</a></p></div>{$raw_data}</div>
</body>
</html>