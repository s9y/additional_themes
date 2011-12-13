{foreach from=$plugindata item=item}
	<div id="serendipity{$pluginside}SideBar" valign="top">
		<div class="boxed">
		
                 {if $item.title != ""}<h2 class="title">{$item.title}</h2>{/if}
                  <div class="content">{$item.content}</div>
                </div>
        </div>
{/foreach}

			