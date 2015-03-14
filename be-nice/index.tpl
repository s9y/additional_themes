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
<!-- Ported to Serendipity by Carl Galloway [http://www.carlgalloway.com] -->
{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
<div id="container">
	<div id="{if $serendipityVersion < 1.1}serendipity_banner{/if}{if $template_option.headerimage == 'true'}serendipity_banner{elseif $template_option.headerimage == 'false'}serendipity_banner_alt{/if}">
		<h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:40:' ...'}</a></h1>
    		<h4>{$head_subtitle|@default:$blogDescription}</h4>
	</div>
	<div id="navigation">
	<ul>
	<li><a href="{$serendipityBaseURL}">Home</a></li>
		{if $serendipityVersion < 1.1}
				<!-- ****** Change navbar links here ****** -->
    			<li><a href="#">Link</a></li>
    			<li><a href="#">Link</a></li>
    			<li><a href="#">Link</a></li>
    			<li><a href="#">Link</a></li>
		{else}
        		{foreach from=$navlinks item="navlink"}
        		<li><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
		      {/foreach}
		{/if}
	</ul>
</div>
<div id="mainpane">
	<div id="content">{$CONTENT}</div>
      <div id="sidebar">
		{serendipity_printSidebar side="right"}
		{serendipity_printSidebar side="left"}
	</div>
</div>

<div id="footer"><p>Design by <a href="http://www.gigadesign.be/" title="main website from the designer">Gigadesign</a> | Ported to <a href="http://www.s9y.org">Serendipity</a> by <a href="http://www.carlgalloway.com/categories/9-Downloads">Carl</a></p></div>
</div>
</div>
{$raw_data}
</body>
</html>