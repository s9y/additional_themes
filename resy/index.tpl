{if $is_embedded != true}
<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="{$lang}"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="{$lang}"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="{$lang}"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="{$lang}"> <!--<![endif]-->
<head>
    <meta charset="{$head_charset}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>{$blogTitle}</title>
    {serendipity_hookPlugin hook="frontend_header"}
    <meta name="Powered-By" content="Serendipity v.{$head_version}">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="{$head_link_stylesheet}">
    {if $template_option.colorset != 'default'}
        <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/colorset_{$template_option.colorset}.css">
    {/if}
    <script src="{serendipity_getFile file="js/modernizr-2.5.3.min.js"}"></script>
    <link rel="alternate" type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate" type="application/x.atom+xml" title="{$blogTitle} Atom feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
    {if $entry_id}
        <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
    {/if}
</head>
<body>
<!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->
{else}
    {serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}
    <div id="header-container">
        <header class="wrapper clearfix">
            <div id="title">
                <h1><a class="homelink1" href="{$serendipityBaseURL}"
                    >{$head_title|@default:$blogTitle}</a></h1>
                <h2><a class="homelink2" href="{$serendipityBaseURL}"
                    >{$head_subtitle|@default:$blogDescription}</a></h2>
            </div>
            {if $template_option.navigation == 'true'}
                <nav>
                    <ul>
                        <li><a href="#">Link 1</a></li>
                        <li><a href="#">Link 2</a></li>
                        <li><a href="#">Link 3</a></li>
                    </ul>
                </nav>
            {/if}
        </header>
    </div>
    <div id="main-container">
        <div id="main" class="wrapper clearfix">

            <article 
                {if $template_option.sidebar_position == 'left'}
                    class="right"
                {/if}>
                {$CONTENT}
            </article>
            <aside 
                {if $template_option.sidebar_position == 'left'}
                    class="left"
                {/if}>
                    {if $leftSidebarElements > 0}
                        {serendipity_printSidebar side="left"}
                    {/if}
                    {if $rightSidebarElements > 0}
                        {serendipity_printSidebar side="right"}
                    {/if}
            </aside>

        </div> <!-- #main -->
    </div> <!-- #main-container -->

    {if $template_option.footer == 'true'}
        <div id="footer-container">
            <footer class="wrapper">
            </footer>
        </div>
    {/if}

{/if} <!-- endif raw mode -->

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
