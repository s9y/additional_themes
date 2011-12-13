<div id="serendipityCommentFormC" class="serendipityCommentFormWrap">
<div class="serendipityCommentForm">
    <a id="serendipity_CommentForm"></a>
    <div id="serendipity_replyform_0"></div>

    <form id="serendipity_comment" action="{$commentform_action}#feedback" method="post">
    <div><input type="hidden" name="serendipity[entry_id]" value="{$commentform_id}" /></div>
    <table border="0" width="100%" cellpadding="0" cellspacing="2">
        <tr>
            <td class="serendipity_commentsLabel"><label for="serendipity_commentform_name">{$CONST.NAME}:</label></td>
        </tr>
        <tr>
            <td class="serendipity_commentsValue"><input type="text" id="serendipity_commentform_name" name="serendipity[name]" value="{$commentform_name}" size="30" /></td>
        </tr>

        <tr>
            <td class="serendipity_commentsLabel"><label for="serendipity_commentform_email">{$CONST.EMAIL}:</label></td>
        </tr>
        <tr>
            <td class="serendipity_commentsValue"><input type="text" id="serendipity_commentform_email" name="serendipity[email]" value="{$commentform_email}" /></td>
        </tr>

        <tr>
            <td class="serendipity_commentsLabel"><label for="serendipity_commentform_url">{$CONST.HOMEPAGE}:</label></td>
        </tr>
        <tr>
            <td class="serendipity_commentsValue"><input type="text" id="serendipity_commentform_url" name="serendipity[url]" value="{$commentform_url}" /></td>
        </tr>

        <tr>
            <td class="serendipity_commentsLabel"><label for="serendipity_replyTo">{$CONST.IN_REPLY_TO}:</label></td>
        </tr>
        <tr>
            <td class="serendipity_commentsValue">{$commentform_replyTo}</td>
        </tr>

        <tr>
            <td class="serendipity_commentsLabel"><label for="serendipity_commentform_comment">{$CONST.COMMENT}:</label></td>
        </tr>
        <tr>
            <td class="serendipity_commentsValue">
                <textarea rows="12" cols="40" id="serendipity_commentform_comment" name="serendipity[comment]">{$commentform_data}</textarea><br />
                {serendipity_hookPlugin hook="frontend_comment" data=$commentform_entry}
            </td>
        </tr>

{if $is_commentform_showToolbar}
        <tr>
            <td>&#160;</td>
        </tr>
         <tr>
            <td class="serendipity_commentsOption">
                <input id="checkbox_remember" type="checkbox" name="serendipity[remember]" {$commentform_remember} /><label for="checkbox_remember">{$CONST.REMEMBER_INFO}</label>
    {if $is_allowSubscriptions}
                <br />
                <input id="checkbox_subscribe" type="checkbox" name="serendipity[subscribe]" {$commentform_subscribe} /><label for="checkbox_subscribe">{$CONST.SUBSCRIBE_TO_THIS_ENTRY}</label>
    {/if}
            </td>
       </tr>
{/if}

{if $is_moderate_comments}
       <tr>
            <td class="serendipity_commentsValue serendipity_msg_important" colspan="2">{$CONST.COMMENTS_WILL_BE_MODERATED}</td>
       </tr>
{/if}

       <tr>
            <td>&#160;</td>
       </tr>
       <tr>
            <td><input type="submit" name="serendipity[submit]" value="{$CONST.SUBMIT_COMMENT}" /> <input type="submit" id="serendipity_preview" name="serendipity[preview]" value="{$CONST.PREVIEW}" /></td>
        </tr>
    </table>
    </form>
</div>
</div>
