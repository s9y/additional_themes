{serendipity_hookPlugin hook="entries_header"}
<h2 class="archive">{$CONST.TOPICS_OF} {$dateRange.0|@formatTime:"%B, %Y"}</h2>

{foreach from=$entries item="sentries"}
  {foreach from=$sentries.entries item="entry"}
    <h2><a href="{$entry.link}" rel="bookmark">{$entry.title}</a></h2>

    <div class="meta group">
        <div class="signature">
            <p>{$CONST.POSTED_BY} {$entry.author}</p>
            <p>{$entry.timestamp|@formatTime:'%x'} {$CONST.AT} {$entry.timestamp|@formatTime:'%X'}</p>
        </div>
    </div>
  {/foreach}
{/foreach}

<div class="navigation group">
{serendipity_hookPlugin hook="entries_footer"}
</div>
