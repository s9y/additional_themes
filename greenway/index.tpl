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
<!--[if IE]>
<style>#searchform input {ldelim}margin-top:0px;{rdelim}</style>
<![endif]-->
{serendipity_hookPlugin hook="frontend_header"}
</head>
<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}
  <div class="content">
 	              <div id="top">
 				   <div id="icons">

 				     {foreach from=$icons item="icon"}
 				     <a href="{$icon.thehref}" title="Home page"><img src="{$serendipityBaseURL}templates/greenway/images/ico{$icon.thepicture}.gif" alt="" /></a>
		                    {/foreach}
 				    </div>
 			       	<h1>{$head_title|@default:$blogTitle|truncate:50:" ...":true}</h1>
                                <h2>{$head_subtitle|@default:$blogDescription}</h2>
                  	</div>
 	             <div id="menu">
 	               <ul>
 			  {foreach from=$navlinks item="navlink"}
	  		        <li><a
	  		              {if $navlink.href==$smarty.server.REQUEST_URI} class="current" {/if}
	  		              href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>

		        {/foreach}

		        <form id="searchform" action="{$serendipityBaseURL}" method="get"><input type="hidden" name="serendipity[action]" value="search" /><input alt="Quicksearch" type="text" name="serendipity[searchTerm]" value="{$CONST.QUICKSEARCH}..." onFocus="if(this.value=='{$CONST.QUICKSEARCH}...')value=''" onBlur="if(this.value=='')value='{$CONST.QUICKSEARCH}...';">
                       </form>
 		      </ul>
</div>
 <div id="right_side">
 			<div class="pad">
 			<img src="{$serendipityBaseURL}templates/greenway/images/pic{foreach from=$navlinks item="navlink"}{if $navlink.href==$smarty.server.REQUEST_URI}{$navlink.picture}{/if}{/foreach}{$category_info.categoryid}.jpg" alt="" />
 			{serendipity_printSidebar side="right"}
 			 {serendipity_printSidebar side="left"}
 			 </div>
 		</div>
<div id="left_side">
			<div class="intro">

				<div class="pad">
				 {foreach from=$navlinks item="navlink"}

					  		              {if $navlink.href==$smarty.server.REQUEST_URI}

					  		               {$navlink.bartext}
					  		              {/if}
		                  {/foreach}

		                  {if not $category_info.categoryid ==''}
			{$category_info.category_description}
 			{/if}
				</div>
			</div>
			<div class="mpart">
{$CONTENT}

		  </div>
		{if $from_searchengine==1}
		 <div class="greybox">
		    from_searchengine={$from_searchengine}//{$template_option.guests}<br/>
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi.  Duis semper.
		  </div>
		{/if}
		</div>


		</div>

 <div id="footer">
 <!-- ******  Templates is under a Creative Commons Attribution 3.0.   - Do not remove the link      ****** -->
 		<div class="right"><span style="font-size: xx-small">Design: </span> <a href="http://www.free-css-templates.com">
			<span style="font-size: xx-small">Free Css Templates</span></a><span style="font-size: xx-small">
			</span><span style="font-size: xx-small">ported by </span>
		 		<a href="http://katalog-it.de"><span style="font-size: xx-small">RL</span></a>

 		</div>
 	</div>
 </div>

 {$raw_data}
 {serendipity_hookPlugin hook="frontend_footer"}
 {if $is_embedded != true}
 </body>
 </html>
 {/if}




