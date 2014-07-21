<?xml version="1.0" encoding="charset={$head_charset}"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<!-- morsel 1.0b3 by riscky@gmail -->
<head>
    <title>{$head_title|@default:$blogTitle} {if $head_subtitle} - {$head_subtitle}{/if}</title>
    <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
    <meta name="generator" content="Serendipity v.{$serendipityVersion}" />
    <meta name="mssmarttagspreventparsing" content="true" />

    <!-- XML Feed -->
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
<!--
    <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:trackback="http://madskills.com/public/xml/rss/module/trackback/" xmlns:dc="http://purl.org/dc/elements/1.1/">
    <rdf:Description rdf:about="{$entry.link_rdf}" trackback:ping="{$entry.link_trackback}" dc:title="{$entry.title}" dc:identifier="{$entry.rdf_ident}" /> </rdf:RDF>
-->{/if}
{serendipity_hookPlugin hook="frontend_header"}
</head>

<body><div id="pageWrapper">

<div id="pageHead"><div id="banner">
    <h1><a href="{$serendipityBaseURL}" rel="local">{$head_title|@default:$blogTitle}</a></h1>
    <h2><a href="{$serendipityBaseURL}" rel="local">{$head_subtitle|@default:$blogDescription}</a></h2></div>
</div>
	
<div id="content">
    <div id="contentBody">
        {$CONTENT}
    </div><!-- contentBody -->
    <div id="contentSide">
        {serendipity_printSidebar side="left"}
        {serendipity_printSidebar side="right"}
    </div><!-- contentSide -->		
</div>
<div class="clear mozclear"></div>
	
<div id="pageFoot">
    {if $footer_prev_page}
        <a href="{$footer_prev_page}" rel="local">&laquo; {$CONST.PREVIOUS_PAGE}</a>&#160;&#160;
    {/if}

    {if $footer_info}
        ({$footer_info})
    {/if}

    {if $footer_next_page}
        <a href="{$footer_next_page}" rel="local">&raquo; {$CONST.NEXT_PAGE}</a>
    {/if}

    {serendipity_hookPlugin hook="entries_footer"}

</div> 
</div>
{serendipity_hookPlugin hook="frontend_footer"}
</body>
</html>