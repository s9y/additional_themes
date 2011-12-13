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
<!--
RoundedCorner  serendipity theme by Abdussamad Abdurrazzaq

http://abdussamad.com

 -->
    <title>{$head_title|@default:$blogTitle} {if $head_subtitle} - {$head_subtitle}{/if}</title>
    <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
    <meta name="Powered-By" content="Serendipity v.{$head_version}" />
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
    <link rel="stylesheet" type="text/css" href="{serendipity_getFile file=test.css}" />
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
<div id="banner_lc">
<div id="banner_rc">
<div id="banner_tc">
<div id="banner_bc">	
<div id="banner_bl">
<div id="banner_br">
<div id="banner_tl">
<div id="banner_tr">
<div id="serendipity_banner">
    <h1><a class="homelink1" href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle}</a></h1>
    <h2><a class="homelink2" href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></h2>
</div>
 <div id="top_nav">
    <a href="{$serendipityBaseURL}">Home</a>
    <a href="{$serendipityBaseURL}categories/13-Templates">Templates</a>
    <a href="{$serendipityBaseURL}categories/3-Freeware">Freeware</a>
    <a href="{$serendipityBaseURL}categories/15-Website-Development">Website Development</a>
      </div>


</div></div></div></div></div></div></div></div>

{if false}
		<div id="content_lc">
		<div id="content_rc">
		<div id="content_tc">
		<div id="content_bc">	
		<div id="content_bl">
		<div id="content_br">
		<div id="content_tl">
		<div id="content_tr">
		
		<div id="content_inside">
		{if $leftSidebarElements > 0}
	
	 	<div class="left_sidebar_container">
		<div id="serendipityleftSideBar">	
        {serendipity_printSidebar side="left"}
        </div></div>
		{/if}
		{if $rightSidebarElements >0 and $leftSidebarElements <=0}		
			<div id="content_right_only_position">
		{elseif	$rightSidebarElements >0 and $leftSidebarElements > 0}
			<div id="content_middle_position">
		{elseif	$rightSidebarElements <=0 and $leftSidebarElements > 0}
			<div id="content_left_only_position">
		{else}

		{/if}
		
    	{$CONTENT}
    	
    	{if $rightSidebarElements > 0}
    	<div class="right_sidebar_container">
		<div id="serendipityRightSideBar">		 
		{serendipity_printSidebar side="right"}
		</div></div>
		</div>	</div>				</div>		</div>		</div>		</div>		</div>		</div>		</div>		</div>
		
				
		{/if}

{else}
{if $leftSidebarElements > 0}
	
	 <div class="left_sidebar_container">
		<div id="sidebar_lc">
		<div id="sidebar_rc">
		<div id="sidebar_tc">
		<div id="sidebar_bc">		
		<div id="sidebar_bl">
		<div id="sidebar_br">
		<div id="sidebar_tl">
		<div id="sidebar_tr">
		<div id="serendipityLeftSideBar">	
        {serendipity_printSidebar side="left"}
        </div></div></div></div></div></div></div></div></div></div>
{/if}
{if $rightSidebarElements >0 and $leftSidebarElements <=0}		
		<div id="content_right_only_position">
{elseif	$rightSidebarElements >0 and $leftSidebarElements > 0}
		<div id="content_middle_position">
{elseif	$rightSidebarElements <=0 and $leftSidebarElements > 0}
		<div id="content_left_only_position">
{else}
<div>
{/if}
        <div id="content_lc">
		<div id="content_rc">
		<div id="content_tc">
		<div id="content_bc">	
		<div id="content_bl">
		<div id="content_br">
		<div id="content_tl">
		<div id="content_tr">
		<div id="content_inside">
    	{$CONTENT}
		</div></div>		</div>	</div>		</div>		</div>		</div>		</div>		</div>		</div>		
{if $rightSidebarElements > 0}
    <div class="right_sidebar_container">
		<div id="sidebar_lc">
		<div id="sidebar_rc">
		<div id="sidebar_tc">
		<div id="sidebar_bc">		
		<div id="sidebar_bl">
		<div id="sidebar_br">
		<div id="sidebar_tl">
		<div id="sidebar_tr">
		<div id="serendipityRightSideBar">		 
		{serendipity_printSidebar side="right"}
		</div></div></div>		</div>		</div>		</div>		</div>		</div>		</div>		</div>		
				
{/if}
{/if}
<div class="credit_footer">
This website theme by <a href="http://abdussamad.com">Abdussamad Abdurrazzaq</a>
</div>
{/if}
{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
