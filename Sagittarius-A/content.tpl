{if $searchresult_tooShort}
    <h2 class="pagetitle">{$content_message}</h2>
{elseif $searchresult_error}
    <h2 class="pagetitle">{$content_message}</h2>
{elseif $searchresult_noEntries}
    <h2 class="pagetitle">{$content_message}</h2>
{elseif $searchresult_results}
    <h2 class="pagetitle">{$content_message}</h2>
{else}
    <div class="serendipity_content_message">{$content_message}</div>
{/if}
{$ENTRIES}
{$ARCHIVES}
