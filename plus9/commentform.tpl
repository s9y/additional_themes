<div id="serendipityCommentFormC" class="serendipityCommentForm">
    <div id="serendipity_replyform_0"></div>
    <a id="serendipity_CommentForm"></a>
    <form id="serendipity_comment" action="{$commentform_action}#feedback" method="post">
    <div>
        <input type="hidden" name="serendipity[entry_id]" value="{$commentform_id}" />
    </div>
    <div id="commentform" class="postinput">
        <p><input class="comment" type="text" id="serendipity_commentform_name" name="serendipity[name]" value="{$commentform_name}" size="22" />
           <label for="serendipity_commentform_name"><small>{$CONST.NAME}</small></label></p>
        <p><input class="comment" type="text" id="serendipity_commentform_email" name="serendipity[email]" value="{$commentform_email}" size="22" />
           <label for="serendipity_commentform_email"><small>{$CONST.EMAIL}</small></label></p>
        <p><input class="comment" type="text" id="serendipity_commentform_url" name="serendipity[url]" value="{$commentform_url}" size="22" />
           <label for="serendipity_commentform_url"><small>{$CONST.HOMEPAGE}</small></label></p>
        <p>{$commentform_replyTo}
           <label for="serendipity_replyTo"><small>{$CONST.IN_REPLY_TO}</small></label></p>
        <p><textarea rows="10" cols="100%" id="serendipity_commentform_comment" name="serendipity[comment]">{$commentform_data}</textarea>
           <label for="serendipity_commentform_comment"><small>{$CONST.COMMENT}</small></label></p>
        {serendipity_hookPlugin hook="frontend_comment" data=$commentform_entry}   
{if $is_commentform_showToolbar}
        <p><input id="checkbox_remember" type="checkbox" name="serendipity[remember]" {$commentform_remember} /><label for="checkbox_remember">{$CONST.REMEMBER_INFO}</label></p>
    {if $is_allowSubscriptions}
        <p><input id="checkbox_subscribe" type="checkbox" name="serendipity[subscribe]" {$commentform_subscribe} /><label for="checkbox_subscribe">{$CONST.SUBSCRIBE_TO_THIS_ENTRY}</label></p>
    {/if}
{/if}
{if $is_moderate_comments}
        <p class="serendipity_msg_important">{$CONST.COMMENTS_WILL_BE_MODERATED}</p>
{/if}
        <p><input class="submit" type="submit" name="serendipity[submit]" value="{$CONST.SUBMIT_COMMENT}" /> <input class="submit" type="submit" id="serendipity_preview" name="serendipity[preview]" value="{$CONST.PREVIEW}" /></p>
    </div>
    </form>
</div>
