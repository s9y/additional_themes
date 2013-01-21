<!-- ENTRIES START -->
{if !$is_preview}
<div class="primary">
<h1>{$CONST.ARCHIVES}</h1>
		<ul class="dates">
{foreach from=$entries item="dategroup"}
	{foreach from=$dategroup.entries item="entry"}
        {assign var="entry" value=$entry scope=parent}
	<li>
		<span class="date">{$entry.timestamp|@formatTime:$HEMINGWAY_DATE}</span>
		<a href="{$entry.link}">{$entry.title|@default:$entry.id}</a> 
		{if $entry.categories} {$CONST.IN} {foreach from=$entry.categories item="entry_category" name="categories"}<a href="{$entry_category.category_link}">{$entry_category.category_name|@escape}</a>{if not $smarty.foreach.categories.last}, {/if}{/foreach}
		{/if}		 
	</li>
	{/foreach}
{foreachelse}
	{if not $plugin_clean_page}
      {$CONST.NO_ENTRIES_TO_PRINT}
	{/if}
{/foreach}
</ul>
{if $footer_info}
	<div style="text-align:center;">
	{if $footer_info}
		{if $footer_prev_page}
		<span class="previous"><a href="{$footer_prev_page}">&laquo; {$CONST.PREVIOUS_PAGE}</a></span>
		{else}
		<span class="previous">&#160;</span>
		{/if}
	{else}
	{/if}

	{if $footer_info}
		<span class="entries_info">({$footer_info})</span>
	{/if}

	{if $footer_info}
		{if $footer_next_page}
		<span class="next"><a href="{$footer_next_page}">{$CONST.NEXT_PAGE} &raquo;</a></span>
		{else}
		<span class="next">&#160;</span>
		{/if}
	{else}
	{/if}
	{serendipity_hookPlugin hook="entries_footer"}
	</div>
{/if}
</div>
<div class="secondary">
{serendipity_hookPlugin hook="entries_header" addData="$entry_id"}
    			<h2>{$template_option.about_title}</h2>
			<div class="featured">
			<p>{$template_option.about} {if $template_option.aboutpageurl != "#"}<a href="{$template_option.aboutpageurl}"> More &raquo;</a>{/if}</p>
			</div>
	</div>

{else}
<div class="primary">
    {foreach from=$entries item="dategroup"}
	{foreach from=$dategroup.entries item="entry"}
        {assign var="entry" value=$entry scope=parent}
	<h1 class="serendipity_title">{$entry.title|@default:$entry.id}</h1>
	    <div class="serendipity_entry_body">
		{$entry.body}
            </div>
        {if $entry.has_extended}
            <div class="serendipity_entry_extended"><a id="extended"></a><br />{$entry.extended}</div>
        {/if}
</div>
<hr class="hide" />
	<div class='secondary'>
		<h2>About this entry</h2>
			<div class="featured">
			<p>You&rsquo;re currently reading &ldquo;{$entry.title|@default:$entry.id},&rdquo; an entry on {$blogTitle}</p>
			<dl>
			<dt>{$CONST.POSTED_BY}:</dt>
			<dd><a href="{$entry.link_author}">{$entry.author}</a> {if $dategroup.is_sticky}
				{$CONST.ON}
			{else}
				{$CONST.AT}
			{/if} <a href="{$entry.link}">{if not $dategroup.is_sticky}{$dategroup.date|@formatTime:$HEMINGWAY_DATE}{/if}</a> / {$entry.timestamp|@formatTime:'%H:%M'}<br />Last updated {$last_modified|@formatTime:$HEMINGWAY_DATE}</dd>
			</dl>
			{if $entry.categories}<dl>
			<dt>{$CONST.CATEGORY}:</dt>
			<dd>
			{foreach from=$entry.categories item="entry_category" name="categories"}<a href="{$entry_category.category_link}">{$entry_category.category_name|@escape}</a>{if not $smarty.foreach.categories.last}, {/if}{/foreach}			
			</dd>
			</dl>{/if}
			{if $entry.is_entry_owner and not $is_preview}<dl><dd><a href="{$entry.link_edit}">{$CONST.EDIT_ENTRY}</a></dd>
			</dl>
			{/if}
			</div>
	</div>
        {/foreach}
    {/foreach}


{/if}
<!-- ENTRIES END -->