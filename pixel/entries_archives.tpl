{serendipity_hookPlugin hook="entries_header"}
<div class="topPost">
    <h2 class="pageTitle">{$CONST.ARCHIVES}</h2>
    {foreach from=$archives item="archive"}
    <div class="archive-year">
        <h3>{$archive.year}</h3>
       
        <ul class="plainList">
        {foreach from=$archive.months item="month"}
            <li><strong>{if $month.entry_count}<a href="{$month.link}">{/if}{$month.date|@formatTime:"%B"}:{if $month.entry_count}</a>{/if}</strong> {if $month.entry_count}<a href="{$month.link_summary}">{/if}{$month.entry_count} {$CONST.ENTRIES}{if $month.entry_count}</a>{/if}</li>
        {/foreach}
        </ul>
    </div>
    {/foreach}
</div>
{serendipity_hookPlugin hook="entries_footer"}
