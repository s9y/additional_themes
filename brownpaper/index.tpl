{if $is_embedded != true}
<!doctype html>
<html class="no-js" lang="{$lang}">
<head>
    <meta charset="{$head_charset}">
    <meta name="generator" content="Serendipity v.{$serendipityVersion}"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>{$head_title|@default:$blogTitle} {if $head_subtitle} - {$head_subtitle}{/if}</title>
    <link rel="stylesheet" type="text/css" href="{$BOOTSTRAP_PATH}/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}
    <link rel="shortcut icon" href="{$serendipityBaseURL}HackerInside - 32x icon.ico" />

{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}




<div class="lc">
<div class="rc">
<div class="tc">
<div class="bc">
<div class="bl">
<div class="br">
<div class="tl">
<div class="tr">
<div class="container">
  <div class="row">
    <div id="serendipity_banner" class="col">
        <h1><a class="homelink1" href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle}</a></h1>
        <h2><a class="homelink2" href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></h2>
    </div>
  </div>
  <div id="navbar" class="row">
    <div class="col d-lg-none">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
{if $leftSidebarElements > 0}
    {serendipity_printSidebar side="left"}
{/if}
{if $rightSidebarElements > 0}
    {serendipity_printSidebar side="right"}
{/if}
              </li>
            </ul>
          </div>
        </nav>
        <!-- Navbar -->
    </div>
  </div>
  <div id="mainpane" class="row">
{if $leftSidebarElements > 0}
    <div id="serendipityLeftSideBar" class="col-3 d-none d-lg-block">
        {serendipity_printSidebar side="left"}
    </div>
{/if}
    <div id="content" class="col">
        {$CONTENT}
    </div>
{if $rightSidebarElements > 0}
    <div id="serendipityRightSideBar" class="col-3 d-none d-lg-block">
        {serendipity_printSidebar side="right"}
    </div>
{/if}
  </div>
</div>
</div></div></div></div></div></div></div></div>
<div class="creditfooter">
Parts of this serendipity template are by Abdussamad Abdurrazzaq and <a href="https://blog.hqcodeshop.fi/">Jari Turkia</a>.
</div>
{/if}

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}

  <script src="{$BOOTSTRAP_PATH}/js/bootstrap.min.js"></script>
</body>
</html>
{/if}
