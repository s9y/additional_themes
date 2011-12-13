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
<!-- Ported to Serendipity by Carl Galloway [http://www.carlgalloway.com] -->
{if $template_option.colorset == 'red'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="red.css"}" />
{/if}
{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}
{if $is_raw_mode != true}
<div id="wrap">
	<div id="pagetop">
		<p id="toplinks">Skip to: <a href="#content">Content</a> | <a href="#sidebar">Navigation</a> | <a href="#footer">Footer</a></p>
		<h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:40:' ...'}</a></h1>
    		<p id="slogan">{$head_subtitle|@default:$blogDescription}</p>
	</div>
	<div id="{if $head_version < 1.1}content{/if}{if $template_option.contentposition == 'true'}content{elseif $template_option.contentposition == 'false'}contentalt{/if}">{$CONTENT}</div>	
      <div id="sidebar">
		{serendipity_printSidebar side="right"}
		{serendipity_printSidebar side="left"}
	</div>
{/if}
<div id="footer">
	<p>&copy; {if $head_version < 1.1}2006 Your Business Name | <a href="#">Contact us</a> | <a href="#">Privacy policy</a> | <a href="#">Impressum</a>
	{else}{$template_option.sitename} | {foreach from=$navlinks item="navlink"}<a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a> | {/foreach}{/if}<a href="#pagetop">Back to top</a><br />
Design by <a href="http://andreasviklund.com/">Andreas Viklund</a> | Serendipity Template by <a href="http://www.carlgalloway.com">Carl</a>
</p></div>
</div>
</div>
{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}