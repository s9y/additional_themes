{serendipity_hookPlugin hook="entries_header"}
{foreach from=$archives item="archive"}

   <div class="serendipity_Entry_Eate"><h4 class="serendipity_title">{$archive.year}</h4>
    {foreach from=$archive.months item="month"}
<div class="serendipity_entry">
	<table cellspacing="4" cellpadding="4" border="0">
    <tr>
        <td width="100"><img src="{serendipity_getFile file="img/graph_bar_horisontal.png"}" height="10" width="{math width=100 equation="count * width / max" count=$month.entry_count max=$max_entries format="%d"}" style="border: 1px solid #000000"></td>
        <td>{$month.date|@formatTime:"%B"}</td>
        <td>{$month.entry_count} {$CONST.ENTRIES}</td>
        <td>({if $month.entry_count}<a href="{$month.link}">{/if}{$CONST.VIEW_FULL}{if $month.entry_count}</a>{/if})</td>
        <td>({if $month.entry_count}<a href="{$month.link_summary}">{/if}{$CONST.VIEW_TOPICS}{if $month.entry_count}</a>{/if})</td>
    </tr>
</table></div>
    {/foreach}
</div>
{/foreach}
<div class='serendipity_entryFooter' style="text-align: center">
{serendipity_hookPlugin hook="entries_footer"}</div>
