{if $is_raw_mode}

{/if}
{foreach from=$plugindata item=item}
<div class="sidebar">
    <div class="serendipitySideBarItem container_{$item.class}">
        <div class="sidebar_header">{if $item.title != ""}<h2 class="serendipitySideBarTitle {$item.class}">{$item.title}</h2>{/if}</div>
        <div class="sidebar_content_container">{$item.content}</div>
    </div>
</div>
{/foreach}
{if $is_raw_mode}

{/if}
