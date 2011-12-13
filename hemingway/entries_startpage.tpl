{foreach name="loop1" from=$entries item="dategroup"}
{foreach name="loop2" from=$dategroup.entries item="entry"}
{if $smarty.foreach.loop1.index==0 && $smarty.foreach.loop2.index==0}
<div class="story first">
	<h3><a href="{$entry.link}">{$entry.title}</a></h3>
	<div class="entry_body">{$entry.body}</div>
		<div class="details">{$CONST.POSTED_BY} <a href="{$entry.link_author}">{$entry.author}</a>
		{if $entry.categories}
		{$CONST.IN} {foreach from=$entry.categories item="category" name="categories"}<a href="{$category.category_link}">{$category.category_name|@escape}</a>{if not $smarty.foreach.categories.last}, {/if}{/foreach}
		{/if}

		{if $dategroup.is_sticky}
			{$CONST.AT} {$entry.timestamp|@formatTime:'%H:%M'}
		{else}
			{$CONST.ON} <a href="{$entry.link}">{$entry.timestamp|@formatTime:$HEMINGWAY_DATE}</a> {$CONST.AT} {$entry.timestamp|@formatTime:'%H:%M'}		{/if}

		{if $entry.has_comments}
                    {if $use_popups}
                       | <a href="{$entry.link_popup_comments}" onclick="window.open(this.href, 'comments', 'width=480,height=480,scrollbars=yes'); return false;">{$entry.label_comments} ({$entry.comments})</a>
                    {else}
                       | <a href="{$entry.link}#comments">{$entry.label_comments} ({$entry.comments})</a>
                    {/if}
		{/if}

		{if $entry.has_trackbacks}
                    {if $use_popups}
                        | <a href="{$entry.link_popup_trackbacks}" onclick="window.open(this.href, 'comments', 'width=480,height=480,scrollbars=yes'); return false;">{$entry.label_trackbacks} ({$entry.trackbacks})</a>
                    {else}
                        | <a href="{$entry.link}#trackbacks">{$entry.label_trackbacks} ({$entry.trackbacks})</a>
                    {/if}
		{/if}

		{if $entry.is_entry_owner and not $is_preview} | <a href="{$entry.link_edit}">{$CONST.EDIT_ENTRY}</a>
		{/if}
		<span class="read-on"><a href="{$entry.link}">read on</a></span>
		</div>
</div>
	<div class="story">
		<h4>{$CONST.RECENTENTRIES}</h4>
		<ul class="dates">
{else}
	<li><span class="date">{$entry.timestamp|@formatTime:$HEMINGWAY_DATE}</span>
		<a href="{$entry.link}">{$entry.title|@default:$entry.id}</a> 
		{if $entry.categories} {$CONST.IN} {foreach from=$entry.categories item="entry_category" name="categories"}<a href="{$entry_category.category_link}">{$entry_category.category_name|@escape}</a>{if not $smarty.foreach.categories.last}, {/if}{/foreach}
		{/if}</li>
	{/if}
{/foreach}
{/foreach}
</ul>
{if $footer_info}
	<div style="text-align:center;padding-bottom:2em;">
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
{/if}</div>