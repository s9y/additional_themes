{if $is_raw_mode}<div id="serendipity{$pluginside}SideBar">{/if}
{if $pluginside == 'Left'}{foreach from=$plugindata item=item}{if $item.class == "serendipity_categories_plugin"}<div class="container_category"><a id="sectionmenu"></a>
	{elseif $item.class == "serendipity_plugin_staticpage"}<div class="container_staticmenu">
	{else}<div class="serendipitySideBarItem announce container_{$item.class}">
	{/if}
	{if $item.title != ""}<h2 class="serendipitySideBarTitle {$item.class}">{$item.title}</h2>{/if}<div class="serendipitySideBarContent">{$item.content}</div>
	</div>
{/foreach}
{elseif $pluginside == 'Right'}
{foreach from=$plugindata item=item}
{if $item.class =="serendipity_categories_plugin"}<a id="sectionmenu"></a>{/if}
    <div class="serendipitySideBarItem container_{$item.class}">{if $item.title != ""}<h2 class="serendipitySideBarTitle {$item.class}">{$item.title}</h2>{/if}<div class="serendipitySideBarContent">{$item.content}</div>
    </div>
{/foreach}
{/if}
{if $is_raw_mode}
</div>
{/if}