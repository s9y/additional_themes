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
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" media="all" />

	{if $template_option.fonts == 'times'}
	<link rel="stylesheet" href="{$serendipityBaseURL}templates/{$template}/fontsets/times.css" />
	{elseif $template_option.fonts == 'bitstream_vera_sans'}
	<link rel="stylesheet" href="{$serendipityBaseURL}templates/{$template}/fontsets/bitstream_vera_sans.css" />
	{elseif $template_option.fonts == 'bitstream_vera_serif'}
	<link rel="stylesheet" href="{$serendipityBaseURL}templates/{$template}/fontsets/bitstream_vera_serif.css" />
	{elseif $template_option.fonts == 'georgia'}
	<link rel="stylesheet" href="{$serendipityBaseURL}templates/{$template}/fontsets/georgia.css" />
	{elseif $template_option.fonts == 'courier'}
	<link rel="stylesheet" href="{$serendipityBaseURL}templates/{$template}/fontsets/courier.css" />
	{elseif $template_option.fonts == 'trebuchet'}
	<link rel="stylesheet" href="{$serendipityBaseURL}templates/{$template}/fontsets/trebuchet.css" />
	{elseif $template_option.fonts == 'verdana'}
	<link rel="stylesheet" href="{$serendipityBaseURL}templates/{$template}/fontsets/verdana.css" />
	{elseif $template_option.fonts == 'arial'}
	<link rel="stylesheet" href="{$serendipityBaseURL}templates/{$template}/fontsets/arial.css" />
	{elseif $template_option.fonts == 'helvetica'}
	<link rel="stylesheet" href="{$serendipityBaseURL}templates/{$template}/fontsets/helvetica.css" />
	{elseif $template_option.fonts == 'tahoma'}
	<link rel="stylesheet" href="{$serendipityBaseURL}templates/{$template}/fontsets/tahoma.css" />
	{/if}

	{if $template_option.style == 'aqua'}
	<link rel="stylesheet" href="{$serendipityBaseURL}templates/{$template}/style/aqua.css" />
	{elseif $template_option.style == 'oldskool'}
	<link rel="stylesheet" href="{$serendipityBaseURL}templates/{$template}/style/oldskool.css" />
	{/if}

	<link rel="home" title="Startseite" href="{$serendipityBaseURL}" />
	<link rel="archive" title="Eintragsarchiv (ältere Einträge)" href="{$serendipityBaseURL}archive" />
	{if $is_single_entry}
		{if $footer_prev_page}
		<link rel="prev" title="{$CONST.PREVIOUS_PAGE}" href="{$footer_prev_page}" />
		{/if}
		{if $footer_next_page}
		<link rel="next" title="{$CONST.NEXT_PAGE}" href="{$footer_next_page}" />
		{/if}
	{/if}

	<link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />

{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}

<meta name="viewport" content="width=490" />
<link media="only screen and (max-device-width: 480px)" href="{$serendipityBaseURL}templates/{$template}/iphone.css" type="text/css" rel="stylesheet" />

{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}
<div><a name="top" id="top"></a></div>
	<div id="header">
	{if $template_option.style == 'aqua'}
		<h1><a href="{$serendipityBaseURL}"><img src="{$serendipityBaseURL}templates/{$template}/img/header.png" alt="{$blogTitle}" /></a><span>{$head_title|@default:$blogTitle} {if $head_subtitle} - {$head_subtitle}{/if}</span></h1>
	{elseif $template_option.style == 'oldskool'}
		<h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle} {if $head_subtitle} - {$head_subtitle}{/if}</a></h1>
	{/if}
		<div class="description">{$blogDescription}</div>
	</div>

<div id="column-wrap" class="clearfix">
	<div id="content"> <!-- start content -->
	{$CONTENT}
	</div> <!-- close content -->

	<div id="sidebar1"> <!-- start sidebar1 -->
		<div class="sidebar">
		{if $rightSidebarElements > 0}
			{serendipity_printSidebar side="left"}
		{/if}
		</div>
	</div> <!-- close sidebar1 -->

	<div id="sidebar2"> <!-- start sidebar2 -->
		<div id="rssicon">
			{if $template_option.style == 'aqua'}
			<a href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2"><img class="centered" src="{$serendipityBaseURL}templates/{$template}/img/rssicon.png" alt="RSS-Feed" title="RSS-Feed" /></a>
			{elseif $template_option.style == 'oldskool'}
			<a href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2"><img class="centered" src="{$serendipityBaseURL}templates/{$template}/img/rssicon-oldskool.png" alt="RSS-Feed" title="RSS-Feed" /></a>
	{/if}

		</div>

		<div class="sidebar">
		{if $rightSidebarElements > 0}
			{serendipity_printSidebar side="right"}
		{/if}
		</div>
	</div> <!-- close sidebar2 -->

</div> <!-- close column-wrap -->

<div id="footer">
	<a href="#top"><img src="{$serendipityBaseURL}/templates/{$template}/img/up.png" alt="hoch / up" title="hoch / up" /></a> {$CONST.PROUDLY_POWERED_BY} <a href="http://www.s9y.org">Serendipity {$serendipityVersion}</a>.<br />Style is <a href="http://alp-uckan.net/free/s9y/style-adapation/">adaptation 0.8</a> by <a href="http://alp-uckan.net">Alp Uçkan</a>
</div>

{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}

<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-4911463-1");
pageTracker._initData();
pageTracker._trackPageview();
</script>

</body>
</html>
{/if}
