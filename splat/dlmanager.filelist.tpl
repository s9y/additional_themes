 <div id="entry_top">
<h4 class="serendipity_title"><a href="#">{$headline}</a></h4>
<h3 class="serendipity_date">{$pagetitle}</h3>
</div>
<div id="entry_mid">
<div class="serendipity_entry_body">

	<b>{$CONST.PLUGIN_DOWNLOADMANAGER_CATEGORY}: {$catname}</b> [<a href="{$basepage}?serendipity[subpage]={$pageurl}">{$CONST.PLUGIN_DOWNLOADMANAGER_BACK}</a>]<br />
	{$CONST.PLUGIN_DOWNLOADMANAGER_SUBCATEGORIES}: {$numsubcats}<br />
	{$CONST.PLUGIN_DOWNLOADMANAGER_DLS_IN_THIS_CAT}: {$numdls}<br />
	<br />
	
	{if $has_subcats}
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td> <b>{$CONST.PLUGIN_DOWNLOADMANAGER_SUBCATEGORIES}</b> </td>
				<td width="125px"> <b>{$CONST.PLUGIN_DOWNLOADMANAGER_SUBCATEGORIES}</b> </td>
				<td width="55px"> <b>{$CONST.PLUGIN_DOWNLOADMANAGER_NUMBER_OF_DOWNLOADS}</b> </td>
			</tr>
			
			{$subcatlist}
		
		</table>
		<br />
	{/if}
	
	
	
	
	
	<table width="100%" border="0" cellspacing="0" cellpadding="1">
		<tr>
			<td width="20px">&nbsp;</td>
			{if $filename_field}<td> {$filename_field} </td>{/if}
			{if $dls_field}<td width="40px" align="right"> {$dls_field} </td>{/if}
			{if $filesize_field}<td width="75px" align="right"> {$filesize_field} </td>{/if}
			{if $filedate_field}<td width="75px" align="right"> {$filedate_field} </td>{/if}
		</tr>
		
		{$filelist}
		
	</table>
	<br />
	<br />

</div>
</div>
<div class='serendipity_entryFooter'>
<div id="spacer">
&nbsp;
</div>
</div>
