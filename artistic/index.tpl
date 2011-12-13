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
    <link rel="alternate" type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate" type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}

{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

	<div id="nav">
		<div id="hover">
			<h1><a href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:50:" ...":true}</a></h1>
		</div>
		<ul>
		{if $head_version < 1.1}
				<!-- ****** Change navbar links here ****** -->
    			<li><a href="#">Link</a></li>
    			<li><a href="#">Link</a></li>
    			<li><a href="#">Link</a></li>
    			<li><a href="#">Link</a></li>
		{else}
        		{foreach from=$navlinks item="navlink"}
        		<li><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
		      {/foreach}
		{/if}
		</ul>
	</div>
	<div id="primary_container">
		<div id="content_container">
			<div id="main_identity">
				<h2 class="header"><a href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></h2>
			</div>
			<div id="content">
			{$CONTENT}				
			</div>
			<div id="footer">
				<p>Layout by <a href="http://www.sixshootermedia.com/Pretty_as_a_Picture/templates/">Ricky Wilson</a> | Serendipity Template by <a href="http://www.carlgalloway.com">Carl Galloway</a> | <a href="{$serendipityBaseURL}serendipity_admin.php">{$CONST.LOGIN}</a></p>
			</div>
		</div>

		<div id="aboutbox_container">
		{if $head_version < 1.1}
				<!-- ****** Change about me box here ****** -->
			<div id="aboutbox_title"><h2 class="header">About Me</h2></div>
			<div id="aboutbox_content"><p>Welcome to my site, feel free to bookmark this page, or comment on my entries<br /><a href="#">Read More</a></p></div>
		{else}
			<div id="aboutbox_title"><h2 class="header">{$template_option.abouttitle}</h2></div>
			<div id="aboutbox_content"><p>{$template_option.about}<br /><a href="{$template_option.aboutpageurl}">Read More</a></p></div>
		{/if}
		</div>
		{serendipity_printSidebar side="right"}
		{serendipity_printSidebar side="left"}
	</div>

{if $is_embedded != true}
</body>
</html>
{/if}
