entries_custom.tpl{foreach from=$entries item="dategroup"}
    {foreach from=$dategroup.entries item="entry" name=$fetch}
        <div class="all_entries {if $smarty.foreach.$fetch.last} last_entry{/if}"><div>
    {/foreach}
{/foreach}