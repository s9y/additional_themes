{if $is_embedded != true}
{if $is_xhtml}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
{else}
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
{/if}
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang}" lang="{$lang}">
	<head>
		<title>{$head_title|@default:$blogTitle} {if $head_subtitle} - {$head_subtitle}{/if}</title>
		<meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
		<meta name="Powered-By" content="Serendipity v.{$head_version}" />
		<link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
		<link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
		<link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
		<link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}
{serendipity_hookPlugin hook="frontend_header"}
	</head>
	<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}
		<div id="container">
			<div id="logo">
				<h1><a href="{$serendipityBaseURL}"><span>{$head_title|@default:$blogTitle}</span></a></h1>
			</div>
			<div id="ad_space">&nbsp;</div>
			<div id="top"></div>
			<div id="content">
				<div id="left">
{$CONTENT}
				</div>
{if $rightSidebarElements > 0}
				<div id="right">
{serendipity_printSidebar side="right"}
				</div>
{/if}
			</div>
			<div id="footer"></div>
		</div>
<!--
This Theme is free to use, but you are _not_ allowed to remove 
the Sponsored Links in the Footer !
If you remove them, you are not allowed to use this Theme anymore, 
you have to remove it then from your Blog !
// -->
		<div id="footer_sponsors">
			Wordpress Template by <a href="http://www.fachwissen-katalog.de" title="Artikelverzeichnis" target="_blank">Artikelverzeichnis</a> |
			Ported by <a href="http://www.hungryhacker.com/">fwaggle</a> and <a href="http://www.infectedloser.com/">sabriena</a>
		</div>
<!--
This Theme is free to use, but you are _not_ allowed to remove 
the Sponsored Links in the Footer !
If you remove them, you are not allowed to use this Theme anymore, 
you have to remove it then from your Blog !
// -->		
{if $is_embedded != true}
	</body>
</html>
{/if}
