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
<!-- Template by Ceejay - http://www.carlgalloway.com -->
{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}
{if $is_raw_mode != true}

<div id="navigation">
	<div id="themenu">
		<ul>
		<li><a href="{$serendipityBaseURL}">Home</a></li>
		{if $serendipityVersion < 1.1}
		<li><a href="#">Link1</a></li>
		<li><a href="#">Link2</a></li>
		<li><a href="#">Link3</a></li>
		{else} 
        	{foreach from=$navlinks item="navlink"}
        	<li><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
		{/foreach}
		{/if}
		</ul>
	</div>

	<div id="identity"><a id="topofpage"></a><h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:60:" ..."}</a></h1><h2><a href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></h2>
	</div>
	<div id="search"> 
    		<form id="searchform" action="{$serendipityBaseURL}" method="get">
		<input type="hidden" name="serendipity[action]" value="search" /><div>
		<input type="text" name="serendipity[searchTerm]" value="{$CONST.QUICKSEARCH}..." onFocus="if(this.value=='{$CONST.QUICKSEARCH}...')value=''" onBlur="if(this.value=='')value='{$CONST.QUICKSEARCH}...';"> 
<input type="submit" name="quicksearch-button" value="Go!""></div></form> 
  	</div>
	<div id="about-snippet">
	{if $serendipityVersion < 1.1}
	<p>Welcome to my site, please bookmark this page. Read all about me. <a href="#"> More &raquo;</a></p>
	{else}
	<p>{$template_option.about} <a href="{$template_option.aboutpageurl}"> More &raquo;</a></p>
	{/if}
	</div> 
</div><!--end navigation-->

<div id="wrapper">
	<div id="mainpane">
      		<div id="content">{$CONTENT}</div>
			<div id="sidebar">{serendipity_printSidebar side="right"}{serendipity_printSidebar side="left"}</div>
	</div><!-- end of content -->
	<br class="breakline">
</div>
{/if}
    <div id="footer"><p><span style="float: left;">&copy; {if $serendipityVersion < 1.1}
	<!-- ****** Change footer links here ****** -->Your Name | <a href="#">Impressum</a>{else}{$template_option.copyrightname} | <a href="{$template_option.impressumurl}" title="{$template_option.impressum}">{$template_option.impressum}</a>{/if}</span> <span style="float: right;">Design by <a href="http://www.carlgalloway.com/authors/4-ceejay">ceejay</a> | {$CONST.POWERED_BY} <a href="http://www.s9y.org/">Serendipity</a> | <a title="Login to Admin Suite" href="{$serendipityBaseURL}serendipity_admin.php">Login</a></span></p></div>
{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
