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
<!-- Converted to Serendipity by Carl Galloway [http://www.carlgalloway.com] -->
{if $template_option.colorset == 'white'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="white.css"}" />
{/if}
</head>
	{if $template_option.date_format == 'ddmmyyyy'}
		{assign var="HEMINGWAY_DATE" value=HEMINGWAY_DATE_DDMMYYYY}
	{else}
		{assign var="HEMINGWAY_DATE" value=HEMINGWAY_DATE_MMDDYYYY}
	{/if}
<body>
	<div id="header">
		<div class="inside">
			<div id="search">
				<form method="get" id="searchform" action="{$serendipityBaseURL}"><input type="hidden" name="serendipity[action]" value="search" />
 					<div class="searchimg"></div>
					<input type="text" id="serendipityQuickSearchTermField" name="serendipity[searchTerm]" size="15" />
				</form>
			</div>
			
			<h2><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:35:" ...":true}</a></h2>
			<p class="description">{$head_subtitle|@default:$blogDescription}</p>
		</div>
	</div>
{if $view == "entry" or $staticpage_pagetitle}
<div id="primary" class="single-post">
	<div class="inside"><!-- entries_single.tpl -->
		{include file="./entries_single.tpl"}
	</div>
	<div class="clear"></div>
</div>
{elseif $view == "start"}
<div id="primary" class="twocol-stories">
	<div class="inside">
 		<!-- StartPage Begins -->
		{if $template_option.startpage_option == 'true'}
			{include file="./entries_startpage.tpl"}
		{elseif $template_option.startpage_option == 'false'}
			{serendipity_fetchPrintEntries limit="0,2" use_hooks=0 skip_smarty_hooks=true noSticky=false template="entries_latest.tpl"}
		{/if}
		<!-- StartPage Ends -->
	</div>
	<div class="clear"></div>
</div>
{elseif $view == "search"}
<div id="primary" class="single-post">
	<div class="inside"><!-- search.tpl -->
		{if $searchresult_results}
		{assign var="searchtitle" value=$CONST.YOUR_RESULTS}
		{elseif $searchresult_tooShort}
		{assign var="searchtitle" value=$CONST.OOPS_RESULTS}
		{elseif $searchresult_noEntries}
		{assign var="searchtitle" value=$CONST.NONE_RESULTS}
		{/if}
		{include file="./search.tpl"}
		<div class="secondary">
    			<h2>{$CONST.QUICKSEARCH}</h2>
			<div class="featured">
			<p>{$content_message}</p>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
{elseif $view == "404"}
<div id="primary" class="single-post">
	<div class="inside"><!-- 404.tpl -->
		{include file="./404.tpl"}
	</div>
	<div class="clear"></div>
</div>
{else}
<div id="primary" class="single-post">
	<div class="inside"><!-- entries.tpl -->
		{$CONTENT}
	</div>
	<div class="clear"></div>
</div>
{/if}
<hr class="hide" />
	<div id="ancillary">
		<div class="inside">
			<div class="block first">
				{serendipity_printSidebar side="left"}
			</div>
			<div class="block">
				{serendipity_printSidebar side="middle"}
			</div>
			<div class="block">
				{serendipity_printSidebar side="right"}
			</div>
		<div class="clear"></div>
		</div>
	</div>

<hr class="hide" />
	<div id="footer">
		<div class="inside">
			<p class="copyright">
			</p>
		</div>
	</div>
</body>
</html>
