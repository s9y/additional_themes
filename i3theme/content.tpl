<!-- CONTENT START -->
{if $searchresult_tooShort}
<h2>{$CONST.QUICKSEARCH}</h2>
<p class="serendipity_search_tooshort">{$content_message}</p>
{elseif $searchresult_error}
<h2>{$CONST.QUICKSEARCH}</h2>
<p class="serendipity_search_error">{$content_message}</p>
{elseif $searchresult_noEntries}
<h2>{$CONST.QUICKSEARCH}</h2>
<p class="serendipity_search_noentries">{$content_message}</p>
{elseif $searchresult_results}
<h2>{$CONST.QUICKSEARCH}</h2>
<p class="serendipity_search_results">{$content_message}</p>
{else}
<p class="serendipity_content_message">{$content_message}</p>
{/if}
{$ENTRIES}
{$ARCHIVES}
<!-- CONTENT END -->
