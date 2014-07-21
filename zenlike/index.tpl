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

{if $is_raw_mode != true}
<div id="upbg"></div>

<div id="outer">

<div id="header">
<div id="headercontent">
    <h1><a class="homelink1" href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle}</a></h1>
    <h2><a class="homelink2" href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></h2>
</div>
</div>

<div id="headerpic"></div>

<div id="menu">
    <ul>
{foreach from=$navlinks item="navlink" name=navbar}
        <li><a href="{$navlink.href}" title="{$navlink.title}" {if $currpage==$navlink.href}class="active"{/if}>{$navlink.title}</a></li>
{/foreach}
    </ul>
</div>

<div id="menubottom"></div>

<div id="content">

<div id="normalcontent">
    <ul id="sponsorlinks">
        <li><a href="http://www.heirat.at/">Hochzeit</a></li>
        <li><a href="http://www.heirat.at/forum">Hochzeitsforum</a></li>
        <li><a href="http://www.heirat.at/blog">Hochzeit Ideen</a></li>
    </ul>
    <p id="sponsored">This is a sponsored s9y template.</p>
{if $template_option.headcont_text_toggle == 'true'}
    <h3>{$template_option.headcont_title}</h3>
    <div class="contentarea">{$template_option.headcont_text}</div>
{/if}
</div>

<div class="divider1"></div>

<div id="primarycontainer">
    <div id="primarycontent">
        {$CONTENT}
    </div><!-- close #primarycontent -->
</div><!-- close #primarycontainer -->

<div id="secondarycontent">
    {if $leftSidebarElements > 0}{serendipity_printSidebar side="left"}{/if}
    {if $rightSidebarElements > 0}{serendipity_printSidebar side="right"}{/if}
</div><!-- close #secondarycontent -->

<div id="footer">
    <div class="left">Powered by <a href="http://www.s9y.org">s9y</a></div>
    <div class="right">Design by <a href="http://www.nodethirtythree.com/">NodeThirtyThree Design</a>, ported to s9y by <a href="http://www.yellowled.de">YellowLed</a></div>
</div><!-- close #footer -->

</div><!-- close #content -->
</div><!-- close #outer -->
{/if}

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
