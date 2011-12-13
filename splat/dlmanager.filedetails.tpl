<div id="entry_top">
<h4 class="serendipity_title"><a href="#">{$headline}</a></h4>
<h3 class="serendipity_date">{$pagetitle}</h3>
</div>

<div id="entry_mid">
<div class="serendipity_entry_body">

	{if $showfile}
	<b>{$CONST.PLUGIN_DOWNLOADMANAGER_CATEGORY}: {$catname}</b> [<a href="{$basepage}?serendipity[subpage]={$pageurl}&thiscat={$catid}">{$CONST.PLUGIN_DOWNLOADMANAGER_BACK}</a>]<br />
	<b>{$CONST.PLUGIN_DOWNLOADMANAGER_SUBCATEGORIES}:</b> {$num_subcats}<br />
	<b>{$CONST.PLUGIN_DOWNLOADMANAGER_DLS_IN_THIS_CAT}:</b> {$num_dls}<br />
	<b>{$CONST.PLUGIN_DOWNLOADMANAGER_THIS_FILE}: {$filename}</b><br />
	<br />
	
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td> <b>{$CONST.PLUGIN_DOWNLOADMANAGER_NUM_DOWNLOADS_BLAH}:</b> {$dlcount} </td>
		</tr>
		<tr>
			<td> <b>{$filesize_field}:</b> {$filesize} </td>
		</tr>
		<tr>
			<td> <b>{$filedate_field}:</b> {$filedate} </td>
		</tr>
		<tr>
			<td> <b>{$CONST.PLUGIN_DOWNLOADMANAGER_EDIT_FILE_DESC}:</b>
				<br /> 
				{$description} 
			</td>
		</tr>
		<tr>
			<td> &nbsp; </td>
		</tr>
		<tr>
			<td> &nbsp; </td>
		</tr>
	</table>
	{/if}

</div>
</div>
<div class='serendipity_entryFooter'>
{if $showfile}
	<a href="{$dlurl}"><img src="templates/splat/img/download.gif" border=0 /></a><br /><b>{$CONST.PLUGIN_DOWNLOADMANAGER_DOWNLOAD_FILE}</b>
{/if}
</div>