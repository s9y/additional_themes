{serendipity_hookPlugin hook="entries_header"}
<h2 class="pagetitle">{$CONST.TOPICS_OF} {$dateRange.0|@formatTime:"%B, %Y"}</h2>

<div class="post">
{foreach from=$entries item="sentries"}
    {foreach from=$sentries.entries item="entry"}
    <h3 class="summary_title"><a href="{$entry.link}">{$entry.title}</a></h3>

    <small>{$CONST.POSTED_BY} <a href="{$entry.link_author}">{$entry.author}</a> &bull; {$entry.timestamp|@formatTime:DATE_FORMAT_ENTRY}{if $entry.categories} &bull; {$CONST.CATEGORY}: {foreach from=$entry.categories item="entry_category" name="categories"}<a href="{$entry_category.category_link}">{$entry_category.category_name|@escape}</a>{if not $smarty.foreach.categories.last}, {/if}{/foreach}{/if}</small>

    <hr class="archiverule" />
    {/foreach}
{/foreach}
</div>

<div class="serendipity_pageFooter" style="text-align: center">
{serendipity_hookPlugin hook="entries_footer"}
</div>
