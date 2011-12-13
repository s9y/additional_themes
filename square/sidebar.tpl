{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}
{foreach from=$plugindata item=item}
    <div class="serendipitySideBarItem container_{$item.class}">
        {if $item.title != ""}<h4 class="serendipitySideBarTitle {$item.class}">{$item.title}{if $item.class == "serendipity_calendar_plugin"} {$smarty.now|@formatTime:"%d.%m.%y"}{/if}</h4>{/if}
                <div class="serendipitySideBarContent">{$item.content}</div>
    </div>
{/foreach}
{if $is_raw_mode}
</div>
{/if}
