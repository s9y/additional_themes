<div id="serendipityCommentFormC" class="serendipityCommentForm">
    <div id="serendipity_replyform_0"></div>
    <a id="serendipity_CommentForm"></a>
    <form id="serendipity_comment" action="{$commentform_action}#feedback" method="post">
    <div><input type="hidden" name="serendipity[entry_id]" value="{$commentform_id}" /></div>
		<p><input type="text" id="serendipity_commentform_name" name="serendipity[name]" value="{$commentform_name}" size="30" />
			<label for="serendipity_commentform_name">{$CONST.NAME}</label>
		</p>

            <p><input type="text" id="serendipity_commentform_email" name="serendipity[email]" value="{$commentform_email}" />
			<label for="serendipity_commentform_email">{$CONST.EMAIL}</label>
		</p>

		<p><input type="text" id="serendipity_commentform_url" name="serendipity[url]" value="{$commentform_url}" />
			<label for="serendipity_commentform_url">{$CONST.HOMEPAGE}</label>
		</p>

            <p>{$commentform_replyTo}<label for="serendipity_replyTo">{$CONST.IN_REPLY_TO}</label>
		</p>

            <p><textarea rows="10" cols="40" id="serendipity_commentform_comment" name="serendipity[comment]">{$commentform_data}</textarea>
			</p>
                {serendipity_hookPlugin hook="frontend_comment" data=$commentform_entry}
            

{if $is_commentform_showToolbar}
		<p><input class="checkbox_remember" type="checkbox" name="serendipity[remember]" {$commentform_remember} />
			<label for="checkbox_remember">{$CONST.REMEMBER_INFO}</label><br />
    {if $is_allowSubscriptions}
                <input class="checkbox_subscribe" type="checkbox" name="serendipity[subscribe]" {$commentform_subscribe} />
			<label for="checkbox_subscribe">{$CONST.SUBSCRIBE_TO_THIS_ENTRY}</label>
    {/if}</p>
{/if}

{if $is_moderate_comments}

            <p class="serendipity_msg_important">{$CONST.COMMENTS_WILL_BE_MODERATED}</p>

{/if}
           <p><input class="button" type="submit" name="serendipity[submit]" value="{$CONST.SUBMIT_COMMENT}" /> <input class="button" type="submit" id="serendipity_preview" name="serendipity[preview]" value="{$CONST.PREVIEW}" /></p>
    </form>
</div>
