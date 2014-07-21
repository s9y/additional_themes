{if $is_embedded != true}
{if $is_xhtml}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
           "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
{else}
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
           "http://www.w3.org/TR/html4/loose.dtd">
{/if}
<html xmlns="http://www.w3.org/1999/xhtml">
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
<script type="text/javascript" src="templates/jazzcafe/j/nicetitle.js">
</script>
</head>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

<body>
  <div id="container" class="clearfix">
      <div id="header" onclick="location.href='{$serendipityBaseURL}';" style="cursor: pointer;">

        <div id="logo">
          <h1 id="sitename">{$head_title|@default:$blogTitle}</h1>
		  <h2 id="subtitle">{$head_subtitle|@default:$blogDescription}</h2>
        </div>
      </div>
      
      <div id="search">
 <div id="tabs6">
  <ul>
    <li><a href="#" title="Link 1"><span>Home</span></a></li>
    <li><a href="#" title="Link 2"><span>Photos</span></a></li>
    <li><a href="#" title="Link 3"><span>Musics</span></a></li>
    <li><a href="#" title="Link 4"><span>Downloads</span></a></li>
    <li><a href="#" title="Link 5"><span>About</span></a></li>
    <li><a href="#" title="Link 5"><span>Contact</span></a></li>
  </ul>
</div>
</div>
      
      <div id="content" class="clearfix">
		
	  <div id="main">
           {$CONTENT}

          </div>

    <div id="sidebar">
     
     <div id="search-results"></div>
    {if $rightSidebarElements > 0}         

<div class="sidebar-node">
   
{serendipity_printSidebar side="right"}
{serendipity_printSidebar side="left"}
    
	

  </div>


           
            </div>

			<br clear="all" />
		{/if}     
  <div id="footer">
{serendipity_hookPlugin hook="frontend_footer"}
        <ul>
          
	  
	  <li> |  <a href="#">Home</a> | </li><li> <a href="#">SiteMap
    </a> | </li><li><a href="http://www.piotrpolak.com">Design by Piotr Polak</a> | <a href="mailto:ahmetusal@gmail.com">Ported by Ahmet Usal</a> |</li> 
	</ul>  
    </div>
       
{if $is_embedded != true}
</div>


     


</body>
</html>
{/if}

