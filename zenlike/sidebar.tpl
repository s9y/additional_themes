{foreach from=$plugindata item=item}
    <div class="box container_{$item.class}">
        <h4 class="{$item.class}">{$item.title}</h4>
        <div class="contentarea">
            {$item.content}
        </div>
    </div>
{/foreach}
