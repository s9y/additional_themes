{assign var="view3" value="selected"}
 <div id="menu">
		<ul>
		{foreach from=$plugindata item=item name="tabitems"}
			<li id={$view3}><a href="#nogo">
			   {assign var="view3" value="noselected"}   	
			   {if $item.title != ""}    {$item.title}          {else}     {$CONST.NONE}    {/if}
			 	
			
			   <!--[if gte IE 7]><!--></a><!--<![endif]-->
		        				 <!--[if lte IE 6]> 	<table>	<tr> <td><![endif]-->

					<ul>
						<li>												
	 					      <div class="serendipityTabSideBarContent">{$item.content}</div>                                                       <br/>
						
						</li>
					</ul>
					
							 <!--[if lte IE 6]></td> </tr>	 </table> </a><![endif]-->
			</li>	
		{/foreach}	 
		</ul>
	</div>