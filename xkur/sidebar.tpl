{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}


{if $pluginside !="Top"}
{foreach from=$plugindata item=item}
 <div class="art-Block">
	<div class="art-Block-tl">
	</div>
	<div class="art-Block-tr">
	</div>
	<div class="art-Block-bl">
	</div>
	<div class="art-Block-br">
	</div>
	<div class="art-Block-tc">
	</div>
	<div class="art-Block-bc">
	</div>
	<div class="art-Block-cl">
	</div>
	<div class="art-Block-cr">
	</div>
	<div class="art-Block-cc">
	</div>
	<div class="art-Block-body">
		<div class="art-BlockHeader">
			<div class="art-header-tag-icon">
				<div class="t">
 				
				
				
				
				
				 
					{$item.title}
			        </div>
			</div>
		</div>
		 
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div>

			
					{$item.content}
				</div>
			</div>
		</div>
	</div>
</div>
{/foreach}
{/if}
{if $pluginside =="Top"}
   {foreach from=$plugindata item=item}
       <div class="serendipitySideBarItem container_{$item.class}">
           {if $item.title != ""}<h3 class="serendipitySideBarTitle {$item.class}">{$item.title}</h3>{/if}
           <div class="serendipitySideBarContent">{$item.content}</div>
       </div>
{/foreach}
{/if}

{if $is_raw_mode}
</div>
{/if}
