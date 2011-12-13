{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}
{foreach from=$plugindata item=item}
         {if $item.title != ""}<h2>{$item.title}</h2>{/if}
    {$item.content}
    
{/foreach}
{if $is_raw_mode}
</div>
{/if}
