{if $is_embedded != true}
<!doctype html>
<!--[if lt IE 7 ]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="{$lang}"> <![endif]-->
<!--[if IE 7 ]>    <html class="no-js lt-ie9 lt-ie8" lang="{$lang}"> <![endif]-->
<!--[if IE 8 ]>    <html class="no-js lt-ie9" lang="{$lang}"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="{$lang}"> <!--<![endif]-->
<head>
    <meta charset="{$head_charset}">
    <title>{$head_title|@default:$blogTitle}{if $head_subtitle} | {$head_subtitle}{/if}</title>
    <meta name="generator" content="Serendipity v.{$head_version}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {if $template_option.headlines_webfonts == 'aleo'}
        <link rel="stylesheet" href="//brick.a.ssl.fastly.net/Aleo:700">
    {elseif $template_option.headlines_webfonts == 'philo'}
        {$gfonts[]="Philosopher:700"}
    {/if}
    {if $template_option.webfonts == 'droid'}
        {$gfonts[]="Droid+Sans:400,700"}
    {elseif $template_option.webfonts == 'ptsans'}
        {$gfonts[]="PT+Sans:400,400italic,700,700italic"}
    {elseif $template_option.webfonts == 'osans'}
        {$gfonts[]="Open+Sans:400,400italic,700,700italic"}
    {elseif $template_option.webfonts == 'lato'}
        {$gfonts[]="Lato:400,400italic,700,700italic"}
    {elseif $template_option.webfonts == 'cabin'}
        {$gfonts[]="Cabin:400,400italic,700,700italic"}
    {elseif $template_option.webfonts == 'ubuntu'}
        {$gfonts[]="Ubuntu:400,400italic,700,700italic"}
    {elseif $template_option.webfonts == 'dserif'}
        {$gfonts[]="Droid+Serif:400,400italic,700,700italic"}
    {/if}
    {if $template_option.quote_webfonts}
        {$gfonts[]="Crimson+Text:400,400italic,700,700italic"}
    {/if}
    {if $gfonts}
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family={foreach $gfonts as $gfont}{$gfont}{if not $gfont@last}|{/if}{/foreach}&amp;subset=latin">
    {/if}
    <link rel="stylesheet" href="{$head_link_stylesheet}">

    {if $template_option.colorset != "bright"}
        <link rel="stylesheet" href="{serendipity_getFile file="style_dark.css"}">
    {else}
        <link rel="stylesheet" href="{serendipity_getFile file="style_bright.css"}">
    {/if}
{if $template_option.userstyles == true}
    <link rel="stylesheet" href="{serendipity_getFile file="user.css"}">
{/if}
    <script src="{serendipity_getFile file="js/modernizr-2.7.1.min.js"}"></script>
    
    <link rel="alternate" type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2">
    <link rel="alternate" type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml">
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}">
{/if}
{serendipity_hookPlugin hook="frontend_header"}
    {if $template_option.magnific == true}
    <script src="{serendipity_getFile file="js/jquery.magnific.js"}"></script>
    {/if}
    {if $template_option.sticky_carousel == true}
    <script src="{serendipity_getFile file="/js/jquery.bxslider.min.js"}"></script>
    {/if}
    {if $template_option.lazyload == true}
    <script src="{serendipity_getFile file="/js/jquery.lazyload.min.js"}"></script>
    {/if}
    <script src="{$head_link_script}"></script>
    
</head>
<body class="{if $template_option.webfonts != 'none'}{$template_option.webfonts}{/if}{if $template_option.headlines_webfonts != 'none'} {$template_option.headlines_webfonts}{/if}">
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
                <button type="submit" id="searchsend" name="serendipity[searchButton]"><span class="icon-search-1"></span><span class="visuallyhidden">{$CONST.GO}</span></button>
            </div>
        </form>
        {serendipity_hookPlugin hook="quicksearch_plugin" hookAll="true"}
        <div id="identity">
            <a href="{$serendipityBaseURL}">
                <h1>{$blogTitle}</h1>
                {if $blogDescription}<p>{$blogDescription}</p>{/if}
            </a>
        </div>
        {if $template_option.header_img}
            <img src="{$template_option.header_img|escape}" alt="">
        {/if}
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
<script src="{serendipity_getFile file="js/2k11.min.js"}"></script>
</section>
{/if}
{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
