{foreach from=$plugindata item=item}
  {if $item.class != "serendipity_quicksearch_plugin"}
    <li><div class="sidebarbox container_{$item.class}">
    {if $item.title != ""}
            <h2>{$item.title}</h2>
    {/if}
            {$item.content}
        </div>
    </li>
  {/if}
{/foreach}
