{serendipity_hookPlugin hook="entries_header" addData="$entry_id"}

{foreach from=$entries item="dategroup"}
  {foreach from=$dategroup.entries item="entry"}
  {assign var="entry" value=$entry scope="parent"}

  	{if !$is_single_entry}
  		<div class="ePrv">
  			<div class="ePrvLink"><h3><a class="ePrvLink" href="{$entry.link}">{$entry.title|@default:$entry.body}</a></h3></div>
  			<div class="ePrvDate">{$dategroup.date|@formatTime:DATE_FORMAT_ENTRY} - {$CONST.POSTED_BY} {$entry.author}</div>
  		</div>
  	{/if}

  	{if $is_single_entry}
  		<div class="e">
  			<div class="eDate">{$dategroup.date|@formatTime:DATE_FORMAT_ENTRY} {$CONST.POSTED_BY} {$entry.author}</div>
  			<div class="eContent">{$entry.body}</div>
  		</div>
  	{/if}

	{/foreach}
{/foreach}
