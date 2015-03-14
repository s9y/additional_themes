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
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}

{serendipity_hookPlugin hook="frontend_header"}
</head>

<body id="{if $serendipityVersion < 1.1}{else}{$template_option.colorset}{/if}">
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

<div id="mainpane">
{if $is_raw_mode != true}

<!-- ***** PRIMARY BANNER AREA ***** -->
<div id="serendipity_banner">
    <h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:60:" ...":false}</a></h1>
    <h2>{$head_subtitle|@default:$blogDescription}</h2>
</div>


<div id="mainmenu">
<ul>
<li><a class="current" href="{$serendipityBaseURL}">{$CONST.HOMEPAGE}</a></li>
	{if $serendipityVersion < 1.1}
	<!-- ****** Change navbar links here ****** -->
    	<li><a href="#">About</a></li>
    	<li><a href="#">Photos</a></li>
    	<li><a href="#">Music</a></li>
    	<li><a href="#">Contact</a></li>
	{else}
        {foreach from=$navlinks item="navlink"}
        <li><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
        {/foreach}
	{/if}
</ul>
</div>

<div id="wrap">


<!-- ***** CHECK AND SEE HOW MANY COLUMNS ARE NEEDED ***** -->

<!-- /* case scenario to see if we have a left column the content area and the right column */ -->
{if $leftSidebarElements > 0 && $rightSidebarElements > 0}
	<!-- ***** LEFT COLUMN ***** -->
		<div id="leftsideA">
			<div id="serendipityLeftSideBar">{serendipity_printSidebar side="left"}</div>
		</div>

	<!-- ***** RIGHT COLUMN ***** -->
		<div id="rightsideA">
			<div id="serendipityRightSideBar">{serendipity_printSidebar side="right"}</div>
		</div>

	<!-- ***** CONTENT AREA ***** -->
	 <div id="contentA">{$CONTENT}</div>
{/if}


<!-- /* case scenario to see if we have a left column and only the content area */ -->
{if $leftSidebarElements > 0 && $rightSidebarElements == 0}
	<!-- ***** LEFT COLUMN ***** -->
		<div id="leftsideB">
			<div id="serendipityLeftSideBar">{serendipity_printSidebar side="left"}</div>
		</div>

	<!-- ***** NO RIGHT COLUMN ***** -->

	<!-- ***** CONTENT AREA ***** -->
	 <div id="contentB"><div id="contentholder">{$CONTENT}</div>

{/if}


<!-- /* case scenario to see if we have a right column and only the content area */ -->
{if $leftSidebarElements == 0 && $rightSidebarElements > 0}

	<!-- ***** NO LEFT COLUMN ***** -->

	<!-- ***** RIGHT COLUMN ***** -->
		<div id="rightsideC">
			<div id="serendipityRightSideBar">{serendipity_printSidebar side="right"}</div>
		</div>

	<!-- ***** CONTENT AREA ***** -->
	 <div id="contentC">{$CONTENT}</div>
{/if}

<div class="clearingdiv">&nbsp;</div>
</div>
</div>
<div id="footer">&copy; {if $serendipityVersion < 1.1}
	<!-- ****** Change footer links here ****** -->Your Name{else}{$template_option.copyrightname}{/if} | Design by <a href="http://andreasviklund.com">Andreas Viklund</a> | Serendipity template by <a href="http://www.carlgalloway.com">Carl</a> and <a href="http://www.bexology.com">Bex</a></div>

{/if}

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}

