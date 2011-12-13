<br /><br />
<div class="staticpage_results" style="text-align: left">
    <h1>{$CONST.STATICPAGE_SEARCHRESULTS|sprintf:$staticpage_searchresults}</h1>

    {foreach from=$staticpage_results item="result"}
	<div class="story">
		<h3><a href="{$result.permalink|@escape}" title="{$result.pagetitle|@escape}">{$result.headline}</a> ({$result.realname})</h3> 
		<div class="entry_body">{$result.content|@truncate:400:" ... "}</div>
	</div>
    {/foreach}
</div>
