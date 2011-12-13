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
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

	<div id="content">
		<div class="right">
			<div id="message">{$blogDescription}</div>
			<div id="navigation">
			<!--	<a href="#">Home</a>
				<a href="#">Modern world</a>
		 		<a href="#">Behind the idea</a>
		 		<a href="#">Join the movement</a>
			 	<a href="#">Contact</a> -->
				&nbsp;
			</div>
				{$CONTENT}
				{$raw_data}
		</div>
		<div class="left"> 
			<div id="logo">
    				<h2><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle}</a></h2>
				<p><a href="{$serendipityBaseURL}">{$head_subtitle}</a></p>
			</div>
			<div id="sidebar">
				{if $rightSidebarElements > 0}
					{serendipity_printSidebar side="right"}
				{/if}
					{if $leftSidebarElements > 0}
					{serendipity_printSidebar side="left"}
				{/if}	
			</div>
		</div>
		<div id="footer">
			<p>&copy; Copyright 2006, <a href="http://www.nerdwg.org" title="http://www.nerdwg.org">nerdwg.org</a> design by <a href="mailto:luka@solucija.com">Luka Cvrk</a>, port for s9y by nerdwg.org</p>
		</div>
	</div>
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}