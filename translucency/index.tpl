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
    <link rel="stylesheet" type="text/css" media="screen" href="{$head_link_stylesheet}" />
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}

{if $head_version < 1.1 or $template_option.colorset == 'transred'}
	<style type="text/css" media="all">@import "{serendipity_getFile file="transred.css"}";</style>
{elseif $template_option.colorset == 'transblue'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="transblue.css"}" />
{/if}
{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}
<div id="wrapper">

<div id="searchbar"><form id="searchformheader" action="{$serendipityBaseURL}" method="get"><input type="hidden" name="serendipity[action]" value="search" /><input alt="Quicksearch" type="text" name="serendipity[searchTerm]" value="{$CONST.QUICKSEARCH}..." onFocus="if(this.value=='{$CONST.QUICKSEARCH}...')value=''" onBlur="if(this.value=='')value='{$CONST.QUICKSEARCH}...';">
</form></div>
<div id="wrap">

	<div id="serendipity_banner">
    		<h1 class="title"><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:27:" ...":true}</a></h1>
    		<h2 class="subTitle">{$head_subtitle|@default:$blogDescription}</h2>
    <!-- Opera bug fix -->
    &nbsp;
	</div>
  <div id="menu">
    <a href="{$serendipityBaseURL}" id="navHome" title="Posted Recently">{$CONST.HOMEPAGE}</a>
	{if $head_version < 1.1}
			<!-- ****** Change navbar links here ****** -->
    		<a href="#">News</a>
			<a href="#">Photos</a>
			<a href="#">Projects</a>
			<a href="#">Music</a>
			<a href="#">Contact</a>
	{else}
        {foreach from=$navlinks item="navlink"}
        <a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a>
        {/foreach}
  {/if}</div>
	
  <div id="mainpane">
      <div id="sidebar">
                {serendipity_printSidebar side="right"}
                {serendipity_printSidebar side="left"}
      </div>
	<div id="content">
		{$CONTENT}		
	</div>
  </div>
  
</div>
<div id="footer">Design by <a href="http://www.taeglichanders.de">Christian Hoffmann</a> | Powered by <a href="http://www.s9y.org">Serendipity</a></div>
{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}