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
	<div id="bg">
	<div id="wrap">
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}
	<div id="identity">
        	<h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:50:" ...":true}</a></h1>
        	<div class="description">{$head_subtitle|@default:$blogDescription}</div>
			<div id="navbar">
				<ul>
    				<li><a href="{$serendipityBaseURL}">{$CONST.HOMEPAGE}</a></li>
				{if $head_version < 1.1}
				<!-- ****** Change navbar links here ****** -->
    				<li><a href="#">Link</a></li>
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
    	</div>
<div id="mainpane">
<div id="content">
    {$CONTENT}
</div>

    <div id="sidebar">
    {serendipity_printSidebar side="right"}
    {serendipity_printSidebar side="left"}
    </div>

	<div id="footer">
		<p>Theme designed for <a href="http://www.s9y.org">Serendipity</a> by <a href="http://www.carlgalloway.com">Carl</a> - Photo by <a href="mailto:firey_photographics@yahoo.com">Adam Klepsteen</a></p>
	</div>
</div></div></div>
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
