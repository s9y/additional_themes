{serendipity_hookPlugin hook="entries_header"}
<div class="topPost">
    <h2 class="pageTitle">{$CONST.TOPICS_OF} {$dateRange.0|@formatTime:"%B, %Y"}</h2>

    <dl id="archive-summary">
    {foreach from=$entries item="sentries"}
        {foreach from=$sentries.entries item="entry"}
        <dt><a href="{$entry.link}">{$entry.title}</a></dt>
        <dd>{$CONST.POSTED_BY} <a href="{$entry.link_author}">{$entry.author}</a> {$CONST.ON} {$entry.timestamp|@formatTime:DATE_FORMAT_ENTRY}</dd>
        {/foreach}
    {/foreach}
    </dl>
</div>
{serendipity_hookPlugin hook="entries_footer"}
