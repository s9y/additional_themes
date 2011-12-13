<!-- plugi_staticpage_aboutpage.tpl -->
{assign var="is_static_page" value="yes"}
{if $staticpage_articleformat}
    <h1 class="serendipity_date">{$staticpage_articleformattitle|@escape}</h1>
{/if}

{if $staticpage_navigation}
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
        {$CONST.STATICPAGE_PASSWORD_NOTICE}<br /><br />
        <form action="{$staticpage_form_url}" method="post">
            <div>
                <input type="password" name="serendipity[pass]" value="" />
                <input type="submit" name="submit" value="{$CONST.GO}" />
             </div>
        </form>
{else}

<ul class="dates">
{foreach from=$staticpage_extchildpages item="child"}
<li><span class="date">
        {if $child.image}
        <img src="{$child.image}" alt="" />
        {/if}

        <a href="{$child.permalink}">{$child.pagetitle}</a></span>
        {$child.precontent|truncate:200:"...":true}

</li>
{/foreach}
</ul>
{/if}

{if $staticpage_articleformat}
        </div>
    </div>
{/if}
</div>
<hr class="hide" />
	<div class='secondary'>
    		<h2>About This Site</h2>
		<div class="featured">
		<p>{$template_option.about} {if $template_option.aboutpageurl != "#"}<a href="{$template_option.aboutpageurl}"> More &raquo;</a>{/if}</p>
		</div>
	</div>



