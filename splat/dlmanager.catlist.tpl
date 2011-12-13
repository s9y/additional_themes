<div id="entry_top">
<h4 class="serendipity_title"><a href="#">{$headline}</a></h4>
<h3 class="serendipity_date">{$pagetitle}</h3>
</div>

<div id="entry_mid">
<div class="serendipity_entry_body">

	{if $categories_found}
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td> <b>{$CONST.PLUGIN_DOWNLOADMANAGER_CATEGORIES}</b> </td>
				<td width="55px"> <b>{$CONST.PLUGIN_DOWNLOADMANAGER_NUMBER_OF_DOWNLOADS}</b> </td>
			</tr>
			
			{$catlist}
			
		</table>
	{else}
		<div class='error'>{$CONST.PLUGIN_DOWNLOADMANAGER_NO_CATS_FOUND}</div>	
	{/if}
	<br />

</div>
</div>
<div class='serendipity_entryFooter'>
</div>