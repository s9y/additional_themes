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

<div id="wrap" style="width: {$template_option.PAGE_BREITE};">
<div id="header"><h1><a href="{$serendipityBaseURL}">{$blogTitle}</a></h1>
<p class="description">{$blogDescription}</p>
</div> <!-- header -->


<div id="content" style="width: {$template_option.CONTENT_BREITE};">
{$CONTENT}
</div> <!-- content -->


	<div id="sidebar" style="width: {$template_option.SIDEBAR_BREITE};">
		
		{if $template_option.SIDEBAR_NAVIGATION_TITLE}
		
		<h3 class="serendipitySideBarTitle">{$template_option.SIDEBAR_NAVIGATION_TITLE}</h3>
		
		<ul class="plainList">
		{foreach from=$navlinks item="navlinks"}
        <li><a href="{$navlinks.href}">{$navlinks.title}</a></li>
		{/foreach}
		</ul>
		
		{/if}

		{if $leftSidebarElements > 0} {serendipity_printSidebar side="left"} {/if}
		{if $rightSidebarElements > 0} {serendipity_printSidebar side="right"} {/if}
		
	</div> <!-- sidebar -->


{/if}

</div> <!-- wrap -->

<div id="footer">{$blogTitle} is proudly using the <a href="http://ifelse.co.uk/simpla">Simpla theme</a> originally designed by <a href="http://ifelse.co.uk">Phu</a>. Powered by <a href="http://www.s9y.org/">Serendipity</a>. Ported by <a href="http://www.kunze-media.com">Kunze Media</a>
</div> <!-- footer -->


{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}



</body>
</html>
{/if}
