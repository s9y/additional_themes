{foreach from=$plugindata item=item}
    <div class="serendipitySideBarItem container_{$item.class}">
        <div class="serendipitySideBarTitle {$item.class}">{$item.title}</div>
        <div class="serendipitySideBarContent">{$item.content}</div>
    </div>
{/foreach}