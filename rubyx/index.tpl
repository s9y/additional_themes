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
	</head>
	<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}
{if $is_raw_mode != true}
		<div id="container">
			<div id="header">
				<div id="serendipity_banner">
					<h1><a class="homelink1" href="{$serendipityBaseURL}">{$blogTitle}</a></h1>
					<h2><a class="homelink2" href="{$serendipityBaseURL}">{$blogDescription}</a></h2>
				</div>
				<div id="search">
					<form action="{$serendipityBaseURL}" method="get">
						<input type="hidden"  name="serendipity[action]" value="search" />
						<span id="QuickSearchTermFieldOut"><input alt="Quicksearch" type="text" id="QuickSearchTermField" name="serendipity[searchTerm]" size="13" /></span>
						<input type="image" src="{serendipity_getFile file="img/search_submit.gif"}" id="search-submit" value="OK" />
					</form>
				</div>
			</div>
			<div id="nav">
				<ul>
{if $serendipityVersion < 1.1}
					<li id="active"><a href="#">one<span class="tab-l"></span><span class="tab-r"></span></a></li>
					<li><a href="#">two<span class="tab-l"></span><span class="tab-r"></span></a></li>
					<li><a href="#">three<span class="tab-l"></span><span class="tab-r"></span></a></li>
					<li><a href="#">four<span class="tab-l"></span><span class="tab-r"></span></a></li>
					<li><a href="#">five<span class="tab-l"></span><span class="tab-r"></span></a></li>
{else}
					<li{if $staticpage_pagetitle == ""} id="active"{/if}><a href="{$serendipityBaseURL}" title="Home">Home<span class="tab-l"></span><span class="tab-r"></span></a></li>
					<li{if $staticpage_pagetitle == $template_option.navlink1text} id="active"{/if}><a href="{$template_option.navlink1url}" title="{$template_option.navlink1text}">{$template_option.navlink1text}<span class="tab-l"></span><span class="tab-r"></span></a></li>
					<li{if $staticpage_pagetitle == $template_option.navlink2text} id="active"{/if}><a href="{$template_option.navlink2url}" title="{$template_option.navlink2text}">{$template_option.navlink2text}<span class="tab-l"></span><span class="tab-r"></span></a></li>
					<li{if $staticpage_pagetitle == $template_option.navlink3text} id="active"{/if}><a href="{$template_option.navlink3url}" title="{$template_option.navlink3text}">{$template_option.navlink3text}<span class="tab-l"></span><span class="tab-r"></span></a></li>
					<li{if $staticpage_pagetitle == $template_option.navlink4text} id="active"{/if}><a href="{$template_option.navlink4url}" title="{$template_option.navlink4text}">{$template_option.navlink4text}<span class="tab-l"></span><span class="tab-r"></span></a></li>
					<li{if $staticpage_pagetitle == $template_option.navlink5text} id="active"{/if}><a href="{$template_option.navlink5url}" title="{$template_option.navlink5text}">{$template_option.navlink5text}<span class="tab-l"></span><span class="tab-r"></span></a></li>
{/if}
				</ul>
				<div class="clearer"><span></span></div>
			</div>
			<div id="main">
				<div id="main_in">
					<div id="left">
						<div id="content">
{$CONTENT}

						</div>
					</div>
					<div id="right">
						<div id="right_in">
{if $rightSidebarElements > 0}
							<div id="serendipityRightSideBar">
{serendipity_printSidebar side="right"}

{serendipity_printSidebar side="left"}

							</div>
{/if}
						</div>
						<div class="clearer"><span></span></div>
					</div>
				</div>
			</div>
{/if}
{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
			<div id="footer">
				<div id="top" class="noprint"><p><span class="noscreen">Back on top</span> <a href="#header" title="Back on top ^">^<span></span></a></p></div>
				<div id="bottom">
					<p>Template: <a href="http://www.nuvio.cz/">Nuvio</a> Colors: <a href="http://www.oswd.org/user/profile/id/21158">kendahlin</a> Port: <a href="http://www.hungryhacker.com">fwaggle</a> &amp; <a href="http://www.infectedloser.com">Sabriena</a></p>

					<div class="clearer"><span></span></div>
				</div>
			</div>
		</div>
	</body>
</html>
{/if}
