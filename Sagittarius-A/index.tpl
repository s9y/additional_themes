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
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" media="screen" />
    <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="xxnav.css"}" media="screen" />
    <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="print.css"}" media="print" />
    <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="s9y.css"}" media="all" />
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
{if $entry_id}
    <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}
{serendipity_hookPlugin hook="frontend_header"}
</head>

<body id="home">
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}



{assign var="view2" value=$view} 
{if $template_option.newspapermode =="false"}
   {assign var="view2" value="nonewspaper"} 
{/if}

<div class="page_margins">
  <div class="page">
    <div id="header">
      <div id="topnav">
      
     <a class="skip" title="skip link" href="#content">skip to content</a>
       <span class="hideme">.</span> 
  
  <a class="homelink1" href="{$serendipityBaseURL}">Home</a>
        
        {foreach from=$navlinks item="navlink" name=navbar}| 	       <a href="{$navlink.href}">{$navlink.title}</a>
{/foreach}
        
     </div>
      <h1><a class="homelink1" href="{$serendipityBaseURL}">{$blogTitle}</a></h1>
      <h2>{$blogDescription}</h2>
      
      
       
    
{if $view2 == "entry"} 
 
  <!-- single entry page including trackbacks,   include file="entries_single.tpl"  comments, and commentform -->
   </div> 
      <div id="main">
        <div class="subcolumns">
          <div class="c66l"> 
          <div class="subcl maincontent">  
{elseif $view2 == "start"}<div class="subcolumns"> 
    <!-- start page displaying three different areas -->     
      
        <div class="c33l"> 
          <div class="subcl">
             {serendipity_fetchPrintEntries category=$template_option.catx1 full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_rcol.tpl"}
          </div>
        </div>
        
        <div class="c33l">
          <div class="subc">
              {serendipity_fetchPrintEntries category=$template_option.catx2 full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_rcol.tpl"}
          </div>
        </div>
        
        <div class="c33r">
          <div class="subcr">
             {serendipity_fetchPrintEntries category=$template_option.catx3 full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_rcol.tpl"}
          </div>
        </div>
        </div>
         </div>
	    <div id="main">
	      <div class="subcolumns">
	        <div class="c66l">
          <div class="subcl maincontent"> 
                    <a id="content" name="content"></a> 
	  			       {serendipity_fetchPrintEntries category=$template_option.catlead full=true fetchDrafts=false noSticky=true limit="0,1" template="entries_lead.tpl"}

{elseif $view2 == "404"}
 </div>
    <div id="main">
      <div class="subcolumns">
        <div class="c66l">
          <div class="subcl maincontent"> 
    <!-- if some page does not exist and/or cannot be found -->
    {include file="404.tpl"}
{else}
 </div>
    <div id="main">
      <div class="subcolumns"> 
        <div class="c66l">
          <div class="subcl maincontent"> 
     {$CONTENT}
{/if}

   
      
   
          
            {if $view2 == "entry"}    
 {include file="entries_single.tpl"}
 {/if}             
          
        
 {if $entry.properties.special_switch2 !="true"}  		
            <hr/>
            <div class="subcolumns">
                  <div class="c50l">
                           <div class="subcl">
                               {if $leftSidebarElements > 0}
		   	        {serendipity_printSidebar side="left"}
	                       {/if}
                          </div>
                  </div>
                  <div class="c50r">
                           <div class="subcr">
                                {if $leftSidebarElements > 0}
 		   	        {serendipity_printSidebar side="left2"}
	                      {/if}
                           </div>
                 </div>
            </div>
  {/if}             
       
          </div>
        </div>
        <div class="c33r">
          <div class="subcr">
            <h3>A <em>Simple</em> Sidebar </h3>
            

	    {if $rightSidebarElements > 0}
	        {serendipity_printSidebar side="right"}
            {/if}
            
            
          </div>
        </div>
      </div>
    </div>
 {if $template_option.enableslogan !="false"}
    <div id="footer">
      <h2>{$template_option.footerslogan}</h2>
      <p><a href="http://code.google.com/p/blueprintcss/">Blueprint </a>Theme port with <a href="http://www.yaml.de">yaml</a>  by <a href="http://sagittariusa.de/">RL</a>  <br />
        </p>
    </div>
  {/if}    
    
    
  </div>
</div>

 
{/if}

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
