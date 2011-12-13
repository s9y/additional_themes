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
<!-- Designed by David Cummins 27-9-2006[http://www.bankcreative.com] -->
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}
<div id="mainpane">
        <div class="spacer">
  &nbsp;
</div>
        <div id="content" valign="top">{$CONTENT}</div>
        <div id="wrapper">
        <div id="header">
    <h2><a class="homelink2" href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></h2>
    <h1><a class="homelink1" href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle}</a></h1>

</div>
<div id="navcontainer">
<ul id="navlist">
	<li class="selected"><a href="{$serendipityBaseURL}" accesskey="h">{$CONST.HOMEPAGE}</a></li>
{if $head_version < 1.1}
			<!-- ****** Change navbar links here ****** -->
		<li><a href="#">link</a></li>
		<li><a href="#">Link</a></li>
		<li><a href="#">Link</a></li>
		<li><a href="#">Link</a></li>

	{else}
    		<li><a href="{$template_option.navlink1url}" title="{$template_option.navlink1text}">{$template_option.navlink1text}</a></li>
    		<li><a href="{$template_option.navlink2url}" title="{$template_option.navlink2text}">{$template_option.navlink2text}</a></li>
    		<li><a href="{$template_option.navlink3url}" title="{$template_option.navlink3text}">{$template_option.navlink3text}</a></li>
    		<li><a href="{$template_option.navlink4url}" title="{$template_option.navlink4text}">{$template_option.navlink4text}</a></li> 		
 {/if}
</ul>
</div>
{if $leftSidebarElements > 0}
        <div id="serendipityLeftSideBar" valign="top">{serendipity_printSidebar side="left"}</div>
{/if}
{if $rightSidebarElements > 0}
        <div id="serendipityRightSideBar" valign="top">{serendipity_printSidebar side="right"}</div>
{/if}    
<div class="spacer">
  &nbsp;
</div>
</div>
<div id="footer">
    <p>
    {$head_title} square design by <a href="http://themes.daves.me.uk">David Cummins</a> for <a href="http://s9y.org">Serendipity v.{$head_version}</a>
    </p>
</div>

{/if}

{$raw_data}

{if $is_embedded != true}
</body>
</html>
{/if}
