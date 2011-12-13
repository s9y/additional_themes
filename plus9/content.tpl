<!-- CONTENT START -->
{if $searchresult_tooShort}
    <h2 class="archive">{$CONST.QUICKSEARCH}</h2>
    <div class="warning serendipity_search_tooshort"><p>{$content_message}</p></div>
{elseif $searchresult_error}
    <h2 class="archive">{$CONST.QUICKSEARCH}</h2>
    <div class="warning serendipity_search_error"><p>{$content_message}</p></div>
{elseif $searchresult_noEntries}
    <h2 class="archive">{$CONST.QUICKSEARCH}</h2>
    <div class="warning serendipity_search_noentries"><p>{$content_message}</p></div>
{elseif $searchresult_results}
    <h2 class="archive">{$CONST.QUICKSEARCH}</h2>
    <div class="serendipity_search_results"><p>{$content_message}</p></div>
{else}
    <div class="serendipity_content_message">{$content_message}</div>
{/if}
{$ENTRIES}
{$ARCHIVES}
<!-- CONTENT END -->
