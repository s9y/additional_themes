{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}
{foreach from=$plugindata item=item}
    {if $item.class == "serendipity_quicksearch_plugin"}
    {else}
    <div id="{$item.id|@replace:'@':''}" class="dbx-box">
        <h3 class="dbx-handle">{$item.title}</h3>
        <div class="dbx-content">{$item.content}</div>
    </div>
    {/if}
{/foreach}
{if $is_raw_mode}
</div>
{/if}
