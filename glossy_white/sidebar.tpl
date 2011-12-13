{foreach from=$plugindata item=item}
    <div class="serendipitySideBarItem container_{$item.class}">
        <div class="serendipitySideBarTitle {$item.class}"><div class="ItemTitle">{$item.title}</div></div>
        <div class="serendipitySideBarContent">{$item.content}</div>
		<div class="serendipitySideBarFooter">{$item.footer}</div>
    </div>
{/foreach}