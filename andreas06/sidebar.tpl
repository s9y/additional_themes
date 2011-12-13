{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}
{foreach from=$plugindata item=item}
{if $item.class =="serendipity_categories_plugin"}<a id="sectionmenu"></a>{/if}
    <div class="serendipitySideBarItem container_{$item.class}">
        {if $item.title != ""}<h4 class="serendipitySideBarTitle {$item.class}">{$item.title}</h4>{/if}
        <div class="serendipitySideBarContent">{$item.content}</div>
    </div>
{/foreach}
{if $is_raw_mode}
</div>
{/if}
