<!-- ENTRIES START -->
{serendipity_hookPlugin hook="entries_header" addData="$entry_id"}<!-- end of plugin hook -->
	<div class="primary">
	<h1>{$searchtitle}</h1>

	{foreach from=$entries item="dategroup"}
	{foreach from=$dategroup.entries item="entry"}
	<div class="story">

	<h3><a href="{$entry.link}">{$entry.title}</a></h3>
	<div class="entry_body">{$entry.body|strip_tags:false|truncate:400:" ... "}</div>
		<div class="details"><span class="read-on"><a href="{$entry.link}">read on</a></span>
	</div>

</div>

    {/foreach}
    {/foreach}
	
{if $footer_info}
	<div style="text-align:center;padding-bottom:2em;">
	{if $footer_info}
		{if $footer_prev_page}
		<span class="previous"><a href="{$footer_prev_page}">&laquo; {$CONST.PREVIOUS_PAGE}</a></span>
		{else}
		<span class="previous">&#160;</span>
		{/if}
	{else}
	{/if}

	{if $footer_info}
		<span class="entries_info">({$footer_info})</span>
	{/if}

	{if $footer_info}
		{if $footer_next_page}
		<span class="next"><a href="{$footer_next_page}">{$CONST.NEXT_PAGE} &raquo;</a></span>
		{else}
		<span class="next">&#160;</span>
		{/if}
	{else}
	{/if}
	{serendipity_hookPlugin hook="entries_footer"}
	</div>
{/if}
</div>
