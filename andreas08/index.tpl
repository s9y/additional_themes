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
<!-- Original Design by Andreas Viklund [http://andreasviklund.com] -->
<!-- Converted to Serendipity by Carl Galloway [http://www.carlgalloway.com] -->

{if $template_option.colorset == 'blue'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="blue.css"}" />
{elseif $template_option.colorset == 'pink'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="pink.css"}" />
{elseif $template_option.colorset == 'maroon'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="maroon.css"}" />
{elseif $template_option.colorset == 'green'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="green.css"}" />
{elseif $template_option.colorset == 'nuclear'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="nuclear.css"}" />
{else}

<!-- ****** Change default Colorset here ****** --> 
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="blue.css"}" />
{/if}


<!--[if IE]>
<style>#searchform input {ldelim}margin-top:0px;{rdelim}</style>
<![endif]-->
{serendipity_hookPlugin hook="frontend_header"}
</head>
<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

<div id="pagetop">
<div id="header">
<h1>{$head_title|@default:$blogTitle|truncate:50:" ...":true}</h1>
<h2>{$head_subtitle|@default:$blogDescription}</h2>
</div>
<div id="navigation">
<ul>
<li class="selected"><a href="{$serendipityBaseURL}" accesskey="h">{$CONST.HOMEPAGE}</a></li>
	{if $serendipityVersion < 1.1}
			<!-- ****** Change navbar links here ****** -->
		<li><a href="#">About</a></li>
		<li><a href="#">Photos</a></li>
		<li><a href="#">Contact</a></li>
	{else}
        	{foreach from=$navlinks item="navlink"}
        	<li><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
		{/foreach}
	{/if}
</ul>
<form id="searchform" action="{$serendipityBaseURL}" method="get"><input type="hidden" name="serendipity[action]" value="search" /><input alt="Quicksearch" type="text" name="serendipity[searchTerm]" value="{$CONST.QUICKSEARCH}..." onFocus="if(this.value=='{$CONST.QUICKSEARCH}...')value=''" onBlur="if(this.value=='')value='{$CONST.QUICKSEARCH}...';">
</form>
</div>
</div>
<div id="mainpane" class="{if $serendipityVersion < 1.1}contentleft{/if}{if $template_option.contentposition == 'true'}contentleft{elseif $template_option.contentposition == 'false'}contentright{/if}">

<div id="content">{$CONTENT}</div>
     
<div id="sidebar">
                {serendipity_printSidebar side="right"}
                {serendipity_printSidebar side="left"}

</div>
<div class="clearingdiv">&nbsp;</div>
</div>
<div id="footer"><div class="footerbg">
	<p>Layout by <a href="http://andreasviklund.com">Andreas Viklund</a> | <a href="http://www.s9y.org">Serendipity</a> template by <a href="http://www.carlgalloway.com/categories/9-Downloads">Carl</a></p></div>
</div>
{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
