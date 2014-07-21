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
 <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="dropline_one.css"}" />
 
 
 
 <style type="text/css">
	body 
	{ldelim}	 
	background-color: {$template_option.backgroundc};
        {rdelim}
  </style>
 
 
 
{serendipity_hookPlugin hook="frontend_header"}

</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}
<div id="wrap">
<div id="serendipity_banner"><a id="topofpage"></a>
    <h1><a class="homelink1" href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:80:" ..."}</a></h1>
    <h2><a class="homelink2" href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></h2>
</div>
<ul id="dropline">
 





{if $template_option.enablehmenue=="true"}

 	{foreach from=$navlinks item="navlink" name=navbar}
 	
 		<li><a href="{$navlink.href}"><b>{$navlink.title}</b><!--[if gte IE 7]><!--></a><!--<![endif]-->
	<!--[if lte IE 6]><table><tr><td><![endif]-->
		<ul {if $navlink.drop == "0"} class="blank"{/if}>
		{if $navlink.drop != "0"}    {foreach from=$navlink.dropdownentries item="sub" name=subnavbar}
		                               <li> <a href="{$sub.href}" title="{$sub.title}" >{$sub.title}</a></li>
		                             {/foreach}
		                          {/if}

			<li></li>
		</ul>
 	
 	{/foreach}
 	
{/if}
 
	
 
</ul> <br/>
 
<table id="mainpane">
    <tr>
     
 {if $staticpage_precontent == '<!--noRightSidebar-->'}
         {if $leftSidebarElements > 0}    <td id="serendipityLeftSideBar" valign="top">{serendipity_printSidebar side="left"}</td>  {/if} 
         <td id="content" valign="top">{$CONTENT}</td>
  {else}
  {if $staticpage_precontent == '<!--noLeftSidebar-->'}
        <td id="content" valign="top">{$CONTENT}</td>
        {if $rightSidebarElements > 0}     <td id="serendipityRightSideBar" valign="top">{serendipity_printSidebar side="right"}</td>  {/if} 
 
  {else}
 {if $staticpage_precontent == '<!--noSidebar-->'} 
       <td id="content" valign="top">{$CONTENT}</td>
  {else}
      {if $leftSidebarElements > 0}  
        {if $entry.properties.special_switch2 !="true"}  
            <td id="serendipityLeftSideBar" valign="top">{serendipity_printSidebar side="left"}</td> 
        {/if}
      {/if}
        
        
      <td id="content" valign="top">{$CONTENT}</td>
      
      {if $rightSidebarElements > 0} 
           {if $entry.properties.special_switch !="true"}  
                     <td id="serendipityRightSideBar" valign="top">{serendipity_printSidebar side="right"}</td> 
           {/if}
       {/if}
 
 {/if} 
 {/if} 
 {/if} </tr>
 
        
</table>


<table id="footertable">
    <tr>
       <td id="footerLeft" valign="top">{if $template_option.footerpos =="0"}{serendipity_printSidebar side="top"}{/if}
       					{if $template_option.enablefooterl =="true"}<div id="abstand"></div>     
       					<h3>  {$catx1_cat} </h3>           
         				  {serendipity_fetchPrintEntries category=$template_option.catx1 full=true fetchDrafts=false noSticky=true limit="0,5" template="entries_footer.tpl"}
          {/if}</td>
     
     
     
     
     <td id="footerMid" valign="top">{if $template_option.footerpos =="1"}{serendipity_printSidebar side="top"}{/if}
     				     {if $template_option.enablefooterm =="true"}<div id="abstand"> </div>
                                       <h3> {$tabx2_cat} </h3>        
                                     {serendipity_fetchPrintEntries category=$template_option.catx2 full=true fetchDrafts=false noSticky=true limit="0,5" template="entries_footer.tpl"}
                                     {/if}
      </td>
      
      
      
     <td id="footerRight" valign="top">{if $template_option.footerpos =="2"}{serendipity_printSidebar side="top"}{/if}
               			       {if $template_option.enablefooterr =="true"}<div id="abstand"> </div>
         				 <h3>{$catx3_cat}</h3>
        			      {serendipity_fetchPrintEntries category=$template_option.catx3 full=true fetchDrafts=false noSticky=true limit="0,5" template="entries_footer.tpl"}
        			      {/if}
      </td>
    </tr>

</table>

            



{/if}
{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"} 
{if $is_embedded != true}
<div id="footer">
	<p>S9y Theme <a href="http://www.xkur.de">xkur </a>  - Based on <a href="http://www.carlgalloway.com">Carl </a>and <a href="http://www.cssmenus.co.uk">CSSplay </a></p>
</div>
</div><br><br>

  
</body>
</html>
{/if}
