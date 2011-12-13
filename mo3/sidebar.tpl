{foreach from=$plugindata item=item}
  {if $item.class == "serendipity_quicksearch_plugin"}
  {else}
  {if $item.class == "serendipity_plugin_staticpage"}
     {$item.content}
  {else}

  {if $item.class == "serendipity_categories_plugin"}
  {$item.content} 
  
  {else}
  {if $item.class == "serendipity_archives_plugin"}
    {$item.content}  
  {else}
     <div id="{$item.class}" class="sbitem">
    {if $item.title != ""}
        <h3>{$item.title}</h3>
    {/if}
     <div class="sbcontent">{$item.content}</div>
    </div>
  {/if} {/if} {/if}{/if}
{/foreach}
