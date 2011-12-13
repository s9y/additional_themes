{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}
{foreach from=$plugindata item=item}
{if $item.class == "serendipity_quicksearch_plugin"}{else}

    <div class="serendipitySideBarItem container_{$item.class}">
        {if $item.title != ""}
		
		<div class="serendipitySideBarTitle {$item.class}">
		   <div class="roundtop"><img src="{$serendipityBaseURL}templates/bex01/img/bexlt.gif" alt="corner graphic" width="15" height="15" class="corner" style="display: none"/>
			<div class="cornertitle">{$item.title}</div>

		</div>
   </div>



  
        {/if}
        <div class="serendipitySideBarContent">{$item.content}</div>
    </div>
    {/if}

{/foreach}
{if $is_raw_mode}
</div>
{/if}
