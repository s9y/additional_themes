{serendipity_hookPlugin hook="entries_header"}
<h2 class="archive">{$CONST.ARCHIVES}</h2>
{foreach from=$archives item="archive"}
<h2 class="archive">{$archive.year}</h2>
<ul class="nobullets">
   {foreach from=$archive.months item="month"}
   <li>{if $month.entry_count != '0'}<a href="{$month.link_summary}">{/if}{$month.date|@formatTime:"%B"}{if $month.entry_count != '0'}</a>{/if}: {$month.entry_count} {$CONST.ENTRIES}</li>
   {/foreach}
</ul>
{/foreach}

{serendipity_showPlugin class="serendipity_plugin_freetag"}
<div class="navigation group">
{serendipity_hookPlugin hook="entries_footer"}
</div>
