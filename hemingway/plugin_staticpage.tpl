<!-- plugin_staticpage.tpl -->
{assign var="is_static_page" value="yes"}
{if $staticpage_articleformat}
    <h1 class="serendipity_date">{$staticpage_articleformattitle|@escape}</h1>
{/if}
{if $staticpage_navigation AND $staticpage_shownavi}
<div style="text-align:center;padding-bottom:4em;">
	{if $staticpage_navigation.prev.name}
		<span class="previous"><a href="{$staticpage_navigation.prev.link}" title="prev">&laquo; {$staticpage_navigation.prev.name|@escape}</a></span>
	{else}
		<span class="previous">&#160;</span>
	{/if}
	<span class="entries_info"><a href="{$staticpage_navigation.top.link}" title="top">{$staticpage_navigation.top.name|@escape}</a></span>
	{if $staticpage_navigation.next.name}
		<span class="next"><a href="{$staticpage_navigation.next.link}" title="next">{$staticpage_navigation.next.name|@escape} &raquo;</a></span>
	{else}
		<span class="next">&#160;</span>
	{/if}	
</div>
{/if}

{if $staticpage_articleformat}
    <div class="serendipity_entry">
        <div class="serendipity_entry_body">
{/if}

{if $staticpage_pass AND $staticpage_form_pass != $staticpage_pass}
        <div class="staticpage_password">{$CONST.STATICPAGE_PASSWORD_NOTICE}</div>
        <br /><br />
        <form class="staticpage_password_form" action="{$staticpage_form_url}" method="post">
            <div>
                <input type="password" name="serendipity[pass]" value="" />
                <input type="submit" name="submit" value="{$CONST.GO}" />
             </div>
        </form>
{else}
	<div class="staticpage_content">{$staticpage_content}<br /><br />
	{if $staticpage_author}{$staticpage_author|@escape}{/if}
{if $staticpage_lastchange} {$CONST.ON} <span class="staticpage_metainfo_lastchange">{$staticpage_lastchange|@formatTime:$HEMINGWAY_DATE}</span>
{/if}
{if $staticpage_adminlink AND $staticpage_adminlink.page_user}
     (<a class="staticpage_metainfo_editlink" href="{$staticpage_adminlink.link_edit}">{$staticpage_adminlink.link_name|@escape}</a>)
{/if}</div>
{/if}

{if $staticpage_articleformat}
        </div>
</div>
{/if}
</div>
<hr class="hide" />
	<div class='secondary'>
	{if $template_option.about_title != ''}
    		<h2>{$template_option.about_title}</h2>
		<div class="featured">
		{if $staticpage_precontent}<p>{$staticpage_precontent}</p>{else}<p>{$template_option.about} {if $template_option.aboutpageurl != "#"}<a href="{$template_option.aboutpageurl}"> More &raquo;</a>{/if}</p>
{/if}
        {if is_array($staticpage_childpages)}
        <ul id="staticpage_childpages">
            {foreach from=$staticpage_childpages item="childpage"}
            <li><a href="{$childpage.permalink|@escape}" title="{$childpage.pagetitle|@escape}">{$childpage.pagetitle|@escape}</a></li>
            {/foreach}
        </ul>
        {/if}
		</div>
    {else}
	{/if}
	</div>
