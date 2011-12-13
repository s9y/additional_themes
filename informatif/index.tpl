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
{if $template_option.colorset == 'beige'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="beige.css"}" />
{elseif $template_option.colorset == 'pink'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="pink.css"}" />
{elseif $template_option.colorset == 'caramel'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="caramel.css"}" />
{elseif $template_option.colorset == 'olive'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="olive.css"}" />
{elseif $template_option.colorset == 'black'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="black.css"}" />
{/if}

{if $template_option.colorset == 'beige'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="beige.css"}" />
{/if}

</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}




<div id="header">
	<div id="logo">
	<h2><a  href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle}</a></h2>

	<h1><a  href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a> </h1>
	</div>
	<div id="menu">
		<ul>
			{if $head_version < 1.1}
							<!-- ****** Change navbar links here ****** -->
			    				<li><a href="#">About</a></li>
			    				<li><a href="#">Photos</a></li>
			    				<li><a href="#">Projects</a></li>
			    				<li><a href="#">Music</a></li>
			    				<li><a href="#">Contact</a></li>
							{else}
			        {foreach from=$navlinks item="navlink"}
			        <li><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
			        {/foreach}
				{/if}
		</ul>
	</div>
</div>








<table id="mainpane">
    <tr>&nbsp;
        
{if $leftSidebarElements > 0}
        <td id="serendipityLeftSideBar" valign="top">{serendipity_printSidebar side="left"}</td>
{/if}
{if $rightSidebarElements > 0}
        <td id="serendipityRightSideBar" valign="top">{serendipity_printSidebar side="right"}</td>
{/if}<td id="content" valign="top">{$CONTENT}</td>
    </tr>
</table>
<div id="footer">
    <p>
    {$CONST.POWERED_BY} <a href="http://www.s9y.org">Serendipity {$serendipityVersion}</a>.<br />
    Design<a href="http://www.freecsstemplates.org/">:Free CSS Templates</a> 
ported by <a href="http://katalog-it.de">RL</a>
    </p>
</div>
{/if}

{$raw_data}

{if $is_embedded != true}


{if $template_option.colorset == 'beige'}
<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="beige.css"}" />
{/if}

</body>
</html>
{/if}
