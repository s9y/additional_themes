{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}
<ul class="sidelist">
{foreach from=$plugindata item=item}
   {if $item.class == "serendipity_quicksearch_plugin"}
   {else}
    <li>
       {if $item.title != ""}<h3>{$item.title}</h3>{/if}
       {$item.content}
    </li>
    {/if}
{/foreach}
</ul>
{if $is_raw_mode}
</div>
{/if}
