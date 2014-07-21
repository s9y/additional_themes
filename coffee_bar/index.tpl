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
<!-- Design by DAVID CUMMINS [http://themes.daves.me.uk] -->

{if $template_option.colorset == 'blue'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="blue.css"}" />
{elseif $template_option.colorset == 'cappuccino'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="cappuccino.css"}" />
{elseif $template_option.colorset == 'espresso'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="espresso.css"}" />
{else}

<!-- ****** Change default Colorset here ****** --> 
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="blue.css"}" />
{/if}

</head>

<body>
<div id="wrapper">
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}
    
<div id="serendipity_banner">
    <h1><a class="homelink1" href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:30:"...":true}</a></h1>
    <h2><a class="homelink2" href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription|truncate:33:"...":true}</a></h2>
</div>
 
<ul class="menu hack"
    ><li class="active"><a href="{$serendipityBaseURL}">{$CONST.HOMEPAGE}</a><span class="stream"> (this page)</span></li
    >{if $serendipityVersion < 1.1}<li><a href="#">Link 1</a></li
    ><li><a href="#">Link 2</a></li
    ><li><a href="#">Link 3</a></li
      ><li><a href="#">Link 4</a></li
  >{else}
  <li><a href="{$template_option.navlink1url}" title="{$template_option.navlink1text}">{$template_option.navlink1text}</a></li>
    		<li><a href="{$template_option.navlink2url}" title="{$template_option.navlink2text}">{$template_option.navlink2text}</a></li>
    		<li><a href="{$template_option.navlink3url}" title="{$template_option.navlink3text}">{$template_option.navlink3text}</a></li>
    		<li><a href="{$template_option.navlink4url}" title="{$template_option.navlink4text}">{$template_option.navlink4text}</a></li>
	{/if}</ul>

<table id="mainpane">
    <tr>
		<td id="serendipitySideBar" valign="top">
		{serendipity_printSidebar side="right"}
		{serendipity_printSidebar side="left"}</td>
        <td id="content" valign="top">{$CONTENT}</td>

    </tr>
</table>
{/if}

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</div>
</body>
</html>
{/if}
