<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
           "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
{if $head_version < 1.1 or $template_option.colorset == 'default'}
	<style type="text/css" media="all">@import "{serendipity_getFile file="yellow.css"}";</style>
{elseif $template_option.colorset == 'aqua'}
	<link rel="stylesheet" type="text/css" href="{serendipity_getFile file="aqua.css"}" />
{/if} 

{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
<div id="wrap">
	<div id="serendipity_banner">
		<img src="{serendipity_getFile file="img/corner_tl.gif"}" alt="corner" style="float:left;" />
		<!-- uncomment if you want your blog title and description 
    		<span class="title">
      		<span class="white">{$head_title|@default:$blogTitle}</span>
      		<span class="subTitle">
        			{$head_subtitle|@default:$blogDescription}
      		</span>
    		</span>
		-->
		{if $head_version < 1.1}
			<!-- ****** Change navbar links here ****** -->
		<a href="#" title="contact" class="lastMenuItem">contact<span class="desc">send a msg</span></a>
		<a href="#" title="music">music<span class="desc">sing along</span></a>
		<a href="#" title="photos">photos<span class="desc">piccies</span></a>
		<a href="#" title="about">about<span class="desc">me, myself, I</span></a>
		{else}
		<a href="{$template_option.navlink4url}" title="{$template_option.navlink4text}">{$template_option.navlink4text}<span class="desc">{$template_option.navlink4alt}</span></a>
		<a href="{$template_option.navlink3url}" title="{$template_option.navlink3text}">{$template_option.navlink3text}<span class="desc">{$template_option.navlink3alt}</span></a>
		<a href="{$template_option.navlink2url}" title="{$template_option.navlink2text}">{$template_option.navlink2text}<span class="desc">{$template_option.navlink2alt}</span></a>
		<a href="{$template_option.navlink1url}" title="{$template_option.navlink1text}">{$template_option.navlink1text}<span class="desc">{$template_option.navlink1alt}</span></a>
		{/if}
		<a href="{$serendipityBaseURL}" title="home" class="active">home<span class="desc">welcome</span></a>
	</div>

	<div id="mainpane">
      	<div id="sidebar">
			{serendipity_printSidebar side="right"}
			{serendipity_printSidebar side="left"}
      		<div class="bottomCorner"><img src="{serendipity_getFile file="img/corner_sub_br.gif"}" alt="bottom corner" class="vBottom"/></div>
      	</div>

	<div id="content">
		{$CONTENT}
		{$raw_data}
		<!-- Creates bottom left rounded corner -->
		<img src="{serendipity_getFile file="img/corner_sub_bl.gif"}" alt="bottom corner" class="vBottom"/>
	</div>
</div>
	
	<div id="footer">
		<div id="footerLeft">&nbsp;&nbsp;design <a href="http://openwebdesign.org/userinfo.phtml?user=snop" title="OWD design work">snop</a> - photo <a href="http://www.sxc.hu/browse.phtml?f=profile&amp;l=plasticboy&amp;p=1" title="stock.xchng">plasticboy</a> - Converted to <a href="http://www.s9y.org">s9y</a> by <a href="http://www.carlgalloway.com/pages/serendipity-templates.html">Carl</a></div>
		<div id="footerRight">&nbsp;</div>
	</div>
</body>
</html>