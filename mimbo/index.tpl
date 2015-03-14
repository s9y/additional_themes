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
{if ($view == "entry" || $view == "start" || $view == "feed" || $view == "plugin" || $staticpage_pagetitle != "" || $robots_index == 'index')}
    <meta name="robots" content="index,follow" />
{else}
    <meta name="robots" content="noindex,follow" />
{/if}
{if ($view == "entry")}
    <link rel="canonical" href="{$entry.rdf_ident}" />
{/if}
{if ($view == "start")}
    <link rel="canonical" href="{$serendipityBaseURL}" />
{/if}
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" media="screen" />
    <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="nav.css"}" media="screen" />
    <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="print.css"}" media="print" />
    <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="s9y.css"}" media="all" />
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}
{serendipity_hookPlugin hook="frontend_header"}
</head>

<body id="home">
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}
<div id="page" class="clearfloat">
    <div class="clearfloat">
        <div id="branding" class="left">
            <h1><a class="homelink1" href="{$serendipityBaseURL}">{$blogTitle}</a></h1>
            <div class="description">{$blogDescription}</div><!-- /.description -->
        </div><!-- /#branding -->

        <div class="right">
            <form id="searchform" action="{$serendipityBaseURL}" method="get">
                <div>
                    <input type="hidden" name="serendipity[action]" value="search" />
                    <input type="text" value="" name="serendipity[searchTerm]" id="s" />
                    <input type="submit" id="searchsubmit" value="{$CONST.QUICKSEARCH}" name="serendipity[searchButton]" class="button" />
                </div>
            </form>
            {serendipity_hookPlugin hook="quicksearch_plugin" hookAll="true"}
        </div><!-- /.right -->
    </div><!-- /.clearfloat -->

    <ul id="nav" class="clearfloat">
       <li><a href="{$serendipityBaseURL}"{if $currpage==$serendipityBaseURL} class="on"{/if}>{$CONST.HOMEPAGE}</a></li>
{foreach from=$navlinks item="navlink" name=navbar}
       <li><a href="{$navlink.href}"{if $currpage==$navlink.href} class="on"{/if}>{$navlink.title}</a></li>
{/foreach}
    </ul>

    <div id="content">
{if $view == "entry"}
    <!-- single entry page including trackbacks, comments, and commentform -->
    {include file="./entries_single.tpl"}
{elseif $view == "start" && $staticpage_pagetitle == ''}
    <!-- start page displaying three different areas -->
        <div id="lead" class="feature clearfloat">
            {serendipity_fetchPrintEntries category=$template_option.catlead full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_lead.tpl"}
        </div><!-- /#lead -->

        <div id="leftcol">
            {serendipity_fetchPrintEntries category=$template_option.catfeat full=true fetchDrafts=false noSticky=true limit="0,3" template="entries_lcol.tpl"}
        </div><!-- /#leftcol -->

        <div id="rightcol">
            {serendipity_fetchPrintEntries category=$template_option.catx1 full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_rcol.tpl"}
            {serendipity_fetchPrintEntries category=$template_option.catx2 full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_rcol.tpl"}
            {serendipity_fetchPrintEntries category=$template_option.catx3 full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_rcol.tpl"}
        </div><!-- /#rightcol -->
{elseif $view == "404"}
    <!-- if some page does not exist and/or cannot be found -->
    {include file="./404.tpl"}
{else}
    {$CONTENT}
{/if}
    </div><!-- /#content -->

    <div id="sidebar">
{if $leftSidebarElements > 0}
    {serendipity_printSidebar side="left"}
{/if}
{if $rightSidebarElements > 0}
    {serendipity_printSidebar side="right"}
{/if}
    </div><!-- /#sidebar -->
</div><!-- /#page -->

<div id="footer">
&#169; {$date|@formatTime:'%Y'} <span class="url fn org">{$blogTitle}</span> | Powered by <a href="http://www.s9y.org/" target="_blank">s9y</a> | <a href="{$serendipityBaseURL}feeds/index.rss2">{$CONST.ENTRIES}&nbsp;(RSS)</a> | <a href="{$serendipityBaseURL}feeds/comments.rss2">{$CONST.COMMENTS}&nbsp;(RSS)</a> | <a href="http://www.darrenhoyt.com/2007/08/05/wordpress-magazine-theme-released/" target="_blank" title="By Darren Hoyt"><em>Mimbo</em> theme</a> | Ported to s9y by <a href="http://yellowled.de/s9y.html" title="Ported by Matthias Mees">YellowLed</a>
</div><!-- /#footer -->
{/if}

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
