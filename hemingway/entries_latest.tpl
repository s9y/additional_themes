{foreach from=$entries item="dategroup"}
	{foreach name="dategroup" from=$dategroup.entries item="entry"}
	<div class="story {cycle values="first, "}">
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
	{/foreach}
{/foreach}