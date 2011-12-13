{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}
{foreach from=$plugindata item=item}
  <div class="shadow">
    <div class="serendipitySideBarItem container_{$item.class} drop">
        {if $item.title != ""}<h3 class="serendipitySideBarTitle {$item.class}">{$item.title}</h3>
{/if}
        <div class="serendipitySideBarContent">{$item.content}</div>
    </div>
  </div>
{/foreach}
{if $is_raw_mode}
</div>
{/if}
