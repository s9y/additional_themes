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
<div id="wrap">
	<div id="header">
		<ul id="topnav">
		<li><a href="{$serendipityBaseURL}" id="navHome" title="Posted Recently" accesskey="h">Home |</a></li>
		<li><a href="#" id="navAbout" title="About the Author" accesskey="a">About |</a></li>
		<li><a href="#" id="navArchives" title="Posted Previously" accesskey="r">Archives |</a></li>
		<li><a href="#" id="navLinks" title="Recommended Links" accesskey="l">Links |</a></li>
		<li><a href="#" id="navContact" title="Contact the Author" accesskey="c">Contact </a></li>
		</ul>
    		<h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle}</a></h1>
    		<h2>{$head_subtitle|@default:$blogDescription}</h2>
	</div>
	<table id="main"> 
	<tr valign="top">
	<td id="content" valign="top">
			{$CONTENT}
		</td>
      <td id="sidebar" valign="top">
                {serendipity_printSidebar side="right"}
                {serendipity_printSidebar side="left"}
      </td>
	</tr>
   	</table>
<p id="footer">
Design Downloaded from <a href="http://www.vanillamist.com" title="Vanilla Mist">www.vanillamist.com</a> | Ported to <a href="http://www.s9y.org">Serendipity</a> by <a href="http://www.carlgalloway.com">Carl Galloway</a></p>
</div>
{$raw_data}
</body>
</html>