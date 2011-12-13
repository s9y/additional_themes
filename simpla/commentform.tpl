
<form id="commentform" action="{$commentform_action}#feedback" method="post">
	<input type="hidden" name="serendipity[entry_id]" value="{$commentform_id}" />
	
	<p>
		<input type="text" id="serendipity_commentform_name" name="serendipity[name]" value="{$commentform_name}" size="30" />
		<label>{$CONST.NAME}</label>
	</p>
	<p>
		<input type="text" id="serendipity_commentform_email" name="serendipity[email]" value="{$commentform_email}" size="30" />
		<label>{$CONST.EMAIL}</label>
	</p>
	<p>
		<input type="text" id="serendipity_commentform_url" name="serendipity[url]" value="{$commentform_url}" size="30" />
		<label>{$CONST.HOMEPAGE}</label>
	</p>
	<p>
		{$commentform_replyTo}
		<label>{$CONST.IN_REPLY_TO}</label>
	</p>
	<p>
		<textarea rows="10" cols="40" id="serendipity_commentform_comment" name="serendipity[comment]">{$commentform_data}</textarea>{serendipity_hookPlugin hook="frontend_comment" data=$commentform_entry}
	</p>
	
	{if $is_commentform_showToolbar}
      <input id="checkbox_remember" type="checkbox" name="serendipity[remember]" {$commentform_remember} />&#160;
			<label for="checkbox_remember">{$CONST.REMEMBER_INFO}</label>
          {if $is_allowSubscriptions}
              <input id="checkbox_subscribe" type="checkbox" name="serendipity[subscribe]" {$commentform_subscribe} />&#160;
							<label for="checkbox_subscribe">{$CONST.SUBSCRIBE_TO_THIS_ENTRY}</label>
          {/if}
  {/if}
  {if $is_moderate_comments}
      {$CONST.COMMENTS_WILL_BE_MODERATED}
  {/if}

	<p>
		
	<input type="submit" id="serendipity_submit" name="serendipity[submit]" value="{$CONST.SUBMIT_COMMENT}" />
  <input type="submit" id="serendipity_preview" name="serendipity[preview]" value="{$CONST.PREVIEW}" />

	</p>
	
</form>
