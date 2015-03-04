{if $is_embedded != true}
<!doctype html>
<!--[if lt IE 7 ]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="{$lang}"> <![endif]-->
<!--[if IE 7 ]>    <html class="no-js lt-ie9 lt-ie8" lang="{$lang}"> <![endif]-->
<!--[if IE 8 ]>    <html class="no-js lt-ie9" lang="{$lang}"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js {$template_option.font_style}" lang="{$lang}"> <!--<![endif]-->
<head>
    <meta charset="{$head_charset}">
    <title>{$head_title|@default:$blogTitle}{if $head_subtitle} | {$head_subtitle}{/if}</title>
    <meta name="generator" content="Serendipity v.{$head_version}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {if $template_option.font_style == 'serif'}
        <link rel="stylesheet" href="//brick.a.ssl.fastly.net/Vollkorn:400,700,400i/Alegreya:400/Latin+Modern+Mono:400">
    {else}
        <link rel="stylesheet" href="//brick.a.ssl.fastly.net/Fira+Sans:400,700,400i/Alegreya:400/Latin+Modern+Mono:400">
    {/if}
    <link rel="stylesheet" href="{$head_link_stylesheet}">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/styles/github.min.css">
    <link rel="alternate" type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2">
    <link rel="alternate" type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml">
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}">
{/if}
    {serendipity_hookPlugin hook="frontend_header"}
    <script src="{$head_link_script}"></script>
    {if $template_option.userstyles == 'true'}<link rel="stylesheet" href="{serendipity_getFile file="user.css"}" />{/if}
</head>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}
{if $is_raw_mode != true}
<a class="visuallyhidden" href="#content"><span lang="en">Skip to content</span></a>
<section id="page" class="clearfix">
    <header id="banner" class="clearfix{if not $template_option.use_corenav} no-nav{/if}">
        <form id="searchform" action="{$serendipityHTTPPath}{$serendipityIndexFile}" method="get">
            <div>
                <input type="hidden" name="serendipity[action]" value="search">
                <input id="serendipityQuickSearchTermField" name="serendipity[searchTerm]" type="search" placeholder=" Search…" value="">
                <button type="submit" id="searchsend" name="serendipity[searchButton]"><span>{$CONST.GO}</span></button>
            </div>
        </form>
        {serendipity_hookPlugin hook="quicksearch_plugin" hookAll="true"}
        <div id="identity">
            <a href="{$serendipityBaseURL}">
                <h1>{$blogTitle}</h1>
                {if $blogDescription}<p>{$blogDescription}</p>{/if}
            </a>
        </div>
    </header>
    {if $template_option.use_corenav}
        <nav id="primary-nav">
            <ul class="clearfix">{foreach from=$navlinks item="navlink" name="sbnav"}{if $navlink.title!=""&&$navlink.href!=""}<li>{if $currpage==$navlink.href or $currpage2==$navlink.href}<span>{else}<a href="{$navlink.href}">{/if}{$navlink.title}{if $currpage==$navlink.href or $currpage2==$navlink.href}</span>{else}</a>{/if}</li>{/if}{/foreach}</ul>
        </nav>
    {/if}
    
    <main id="content" class="clearfix">
        {$CONTENT}
    </main>


    <footer id="sidebar_bottom" class="clearfix">
        {serendipity_printSidebar side="bottom"}
    </footer>
</section>
<script src="{serendipity_getFile file="js/2k11.min.js"}"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/highlight.min.js"></script>
<script>jQuery(document).ready(function() {
  jQuery('pre.code, pre code').each(function(i, block) {
    hljs.highlightBlock(block);
  });
});</script>
{/if}
{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
