{foreach from=$plugindata item=item}
  {if $item.class != "serendipity_quicksearch_plugin"}
    <div class="{cycle values="col2,col3,col1"} container_{$item.class}">
    {if $item.title != ""}
        <h3>{$item.title}</h3>
    {/if}
        {$item.content}
    </div>
  {/if}
{/foreach}
