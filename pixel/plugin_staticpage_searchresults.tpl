<dl id="pages-found">
    <dt>{$CONST.STATICPAGE_SEARCHRESULTS|sprintf:$staticpage_searchresults}</dt>
{if $staticpage_results}
    {foreach from=$staticpage_results item="result"}
    <dd><a href="{$result.permalink|@escape}" title="{$result.pagetitle|@escape}">{$result.headline}</a> ({$result.realname})</dd>
    <dd>{$result.content|@strip_tags|@strip|@truncate:200:" ... "}</dd>
    {/foreach}
{else}
    <dd>{$CONST.NO_ENTRIES_TO_PRINT}</dd>
{/if}
</dl>
