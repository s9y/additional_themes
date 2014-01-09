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
    <link rel="stylesheet" href="{serendipity_getFile file="s9y.css"}" type="text/css" />
    <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
    <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
    {if $entry_id} <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />{/if}
     
{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

{if $is_raw_mode != true}
<div id="container" class="group">
    <div id="rlmenuefr">
        <div id="rlmenue">
            <ul>
                <li><a href="{$serendipityBaseURL}index.php">Home</a></li> 
            {if $template_option.enablekat == 'true'}
                <li><a href="#">{$CONST.CATEGORY}</a> <ul> {serendipity_showPlugin class="serendipity_categories_plugin"}</ul></li>
            {/if}
            {if $template_option.enablearch == 'true'}
                <li><a href="#">{$CONST.ARCHIVES}</a> {serendipity_showPlugin class="serendipity_archives_plugin"}</li>
            {/if}
            {if $template_option.enableastat == 'true'}
                <li><a href="#">{$template_option.statheader} </a><ul>{serendipity_showPlugin class="serendipity_plugin_staticpage"}</ul></li>
            {/if}            
            {if $template_option.enableuser == 'true'}
                <li><a href="#">{$template_option.dropheader} </a> <ul>{foreach from=$droplinks item="droplink" name=navbar}<li><a href="{$droplink.href}" title="{$droplink.title}">{$droplink.title}</a></li>{/foreach}</ul></li>
            {/if}                             

            {if $template_option.enablelog == 'true'}
            {if $is_logged_in}
     
                <li><a href="#">{$CONST.EDIT} </a>
                    <ul>
                        <li><a href="#">{$CONST.ADMIN_ENTRIES}</a></li>
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=personal">{$CONST.PERSONAL_SETTINGS}</a></li>
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=entries&amp;serendipity[adminAction]=new">{$CONST.ENTRIES}</a></li>
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=entries&amp;serendipity[adminAction]=editSelect">{$CONST.EDIT_ENTRIES}</a></li>
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=category&amp;serendipity[adminAction]=view">{$CONST.CATEGORIES}</a></li>
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=event_display&amp;serendipity[adminAction]=staticpages">{$CONST.PLUGIN_STATICPAGELIST_TITLE_DEFAULT}</a></li>
                        <li><a href="#">{$CONST.MEDIA_LIBRARY}</a></li>
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=media&amp;serendipity[adminAction]=addSelect">{$CONST.ADD_MEDIA}</a></li>
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=media">{$CONST.MEDIA_LIBRARY}</a></li>
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=media&amp;serendipity[adminAction]=directorySelect">{$CONST.MANAGE_DIRECTORIES}</a></li>
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=media&amp;serendipity[adminAction]=sync">{$CONST.CREATE_THUMBS}</a></li>                
                        <li><a href="#">{$CONST.APPEARANCE}</a></li>
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=templates">{$CONST.MANAGE_STYLES}</a></li>
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=plugins">{$CONST.CONFIGURE_PLUGINS}</a></li>        
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=plugins&amp;serendipity[adminAction]=addnew"> + Sidebar-Plugin </a></li>        
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=plugins&amp;serendipity[adminAction]=addnew&amp;serendipity[type]=event">+ Event-Plugin</a></li>        
                        <li><a href="#">{$CONST.ADMIN}</a></li> 
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=configuration">{$CONST.CONFIGURATION}</a></li>
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=users">{$CONST.MANAGE_USERS}</a></li>        
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=groups"> {$CONST.MANAGE_GROUPS}</a></li>        
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=import">{$CONST.IMPORT_ENTRIES}</a></li>        
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=export">{$CONST.EXPORT_ENTRIES}</a></li>        
                        <li><a href="{$serendipityBaseURL}/serendipity_admin.php?serendipity[adminModule]=logout" rel="gb_page_center[500, 500]">Logout</a></li>
                    </ul>
                </li>
        
            {else}
                <li><a href="{$serendipityBaseURL}/serendipity_admin.php" >Login</a></li>
            {/if}
        {/if}

        {foreach from=$navlinks item="navlink" name=navbar}
                <li{if $currpage==$navlink.href} class="current_page_item"{/if}><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
        {/foreach} 
            </ul>
        </div>
    </div>

    <h1><a href="{$serendipityBaseURL}">{$blogTitle}</a></h1>
    
    <div id="cl1"> 
        <b>{if $startpage}{$CONST.HOMEPAGE}{else}{$CONST.HOMEPAGE}{/if}<br/>
            {if ($head_title && !$entry.title) || ($head_title != $entry.title)}
            {if $entry.title}&raquo; {$category_info.category_name}{/if}
            {elseif $head_title && $entry.title}
            {if $category_info.category_name}
            &raquo; {$category_info.category_name} 
            {/if}
            {if $entry.title == $head_title}
            &raquo; {$entry.title|truncate:28:" ...":true} 
            {/if}
            {elseif $head_subtitle}
            &raquo;  
            {/if}
            {if $staticpage_pagetitle && !$entry.title} 
            &raquo; {$staticpage_headline}
            {/if}
        </b>
    </div>
    <div id="cm1"> &nbsp;
        <a class="homelink2" href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a>
    </div>
    <div id="cr1">
        <strong><a style="white-space: nowrap" href="{$plugin_calendar_head.uri_month}/">{$plugin_calendar_head.month_date|formatTime:"%B '%y":false}</a></strong>
    </div><br/>

    <div id="leiste">
        <ul>
            <li class="selected">{if $template_option.wppddd == 'true'}{$template_option.addvtext}{/if}</li>
        </ul>
        <form id="searchform" action="{$serendipityBaseURL}" method="get"><input type="hidden" name="serendipity[action]" value="search" /><input alt="Quicksearch" type="text" name="serendipity[searchTerm]" value="{$CONST.QUICKSEARCH}..." onFocus="if(this.value=='{$CONST.QUICKSEARCH}...')value=''" onBlur="if(this.value=='')value='{$CONST.QUICKSEARCH}...';"></input></form>
    </div><!-- /#leiste -->

    <br/> <br/> 
 
    <div id="content" class="group">
        {$CONTENT}
    </div><!-- /#content -->

    <div id="sidebar">
        {if $leftSidebarElements > 0}
            {serendipity_printSidebar side="left"}
        {/if}
        {if $rightSidebarElements > 0}
            {serendipity_printSidebar side="right"}
        {/if}
    </div><!-- /#sidebar -->

</div><!-- /#container -->

<div id="footer">
    <p>Template:<a href="http://www.plus9.de/index.php"  >Plus9</a>   </p>
</div>
{/if}

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
