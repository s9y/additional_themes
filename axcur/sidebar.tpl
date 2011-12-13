{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}
{foreach from=$plugindata item=item}
     
                                <div class="art-Block">
	                            <div class="art-Block-body">
	                                <div class="art-BlockHeader">
	                                    <div class="l"></div>
	                                    <div class="r"></div>
	                                    <div class="art-header-tag-icon">
	                                     {if $item.title != ""}    <div class="t">{$item.title}</div>{/if}
	                                    </div>
	                                </div><div class="art-BlockContent">
	                                    <div class="art-BlockContent-tl"></div>
	                                    <div class="art-BlockContent-tr"></div>
	                                    <div class="art-BlockContent-bl"></div>
	                                    <div class="art-BlockContent-br"></div>
	                                    <div class="art-BlockContent-tc"></div>
	                                    <div class="art-BlockContent-bc"></div>
	                                    <div class="art-BlockContent-cl"></div>
	                                    <div class="art-BlockContent-cr"></div>
	                                    <div class="art-BlockContent-cc"></div>
                                    <div class="art-BlockContent-body">
                                         {$item.content}

	                             </div>
	                           </div>
	                            </div>
                        </div>
        
         
{/foreach}
{if $is_raw_mode}
</div>
{/if}
