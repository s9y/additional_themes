<div id="serendipityCommentFormC" class="serendipityCommentForm">
<div id="serendipity_replyform_0"></div>
<a id="serendipity_CommentForm"></a>
<form id="serendipity_comment" action="{$commentform_action}#feedback" method="post">
<fieldset>
<legend>{$CONST.COMMENT}</legend>
	<div><input type="hidden" name="serendipity[entry_id]" value="{$commentform_id}" /></div>
	
	<textarea cols="27" rows="12" id="serendipity_commentform_comment" name="serendipity[comment]" class="elastisch">{$commentform_data}</textarea><br />
	{serendipity_hookPlugin hook="frontend_comment" data=$commentform_entry}
	<br />
	<br />

	<label for="serendipity_replyTo" class="cform">{$CONST.IN_REPLY_TO}</label>
	{$commentform_replyTo}<br />

	<label for="serendipity_commentform_name" class="cform">{$CONST.NAME}</label>
	<input type="text" id="serendipity_commentform_name" name="serendipity[name]" value="{$commentform_name}" class="elastisch" /><br />
	
	<label for="serendipity_commentform_email" class="cform">{$CONST.EMAIL}</label>
	<input type="text" id="serendipity_commentform_email" name="serendipity[email]" value="{$commentform_email}" class="elastisch" /><br />
	
	<label for="serendipity_commentform_url" class="cform">{$CONST.HOMEPAGE}</label>
	<input type="text" id="serendipity_commentform_url" name="serendipity[url]" value="{$commentform_url}" class="elastisch" /><br />
	<br />

	{if $is_commentform_showToolbar}
		
		<label class="chkbx" for="checkbox_remember">{$CONST.REMEMBER_INFO}</label>
		<input id="checkbox_remember" type="checkbox" name="serendipity[remember]" {$commentform_remember} />
		<br />
			{if $is_allowSubscriptions}
				<label class="chkbx" for="checkbox_subscribe">{$CONST.SUBSCRIBE_TO_THIS_ENTRY}</label>
				<input id="checkbox_subscribe" type="checkbox" name="serendipity[subscribe]" {$commentform_subscribe} />
				<br /><br />
			{/if}
	{/if}
	
	{if $is_moderate_comments}
	{$CONST.COMMENTS_WILL_BE_MODERATED}
	{/if}
	
	<div class="aligncenter"><input type="submit" id="serendipity_submit" name="serendipity[submit]" value="{$CONST.SUBMIT_COMMENT}" /> <input type="submit" id="serendipity_preview" name="serendipity[preview]" value="{$CONST.PREVIEW}" /></div>
	<br />
</fieldset>
</form>
</div>
