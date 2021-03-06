<div class="serendipityCommentForm">
    <div id="serendipity_replyform_0"></div>
    <a id="serendipity_CommentForm"></a>
    <form id="serendipity_comment" action="{$commentform_action}#feedback" method="post">
    <div><input type="hidden" name="serendipity[entry_id]" value="{$commentform_id}" /></div>
          <div class="serendipity_commentsLabel"><label for="serendipity_commentform_name">{$CONST.NAME}</label></div>
          <div class="serendipity_commentsValue"><input type="text" id="serendipity_commentform_name" name="serendipity[name]" value="{$commentform_name}" size="30" /></div>
          <br />
          <div class="serendipity_commentsLabel"><label for="serendipity_commentform_email">{$CONST.EMAIL}</label></div>
          <div class="serendipity_commentsValue"><input type="text" id="serendipity_commentform_email" name="serendipity[email]" value="{$commentform_email}" /></div>
          <br />  
          <div class="serendipity_commentsLabel"><label for="serendipity_commentform_url">{$CONST.HOMEPAGE}</label></div>
          <div class="serendipity_commentsValue"><input type="text" id="serendipity_commentform_url" name="serendipity[url]" value="{$commentform_url}" /></div>
          <br />
          <div class="serendipity_commentsLabel"><label for="serendipity_replyTo">{$CONST.IN_REPLY_TO}</label></div>
          <div class="serendipity_commentsValue">{$commentform_replyTo}</div>
          <br />
          <div class="serendipity_commentsLabel"><label for="serendipity_commentform_comment">{$CONST.COMMENT}</label></div>
          <div class="serendipity_commentsValue">
                <textarea rows="10" cols="35" id="serendipity_commentform_comment" name="serendipity[comment]">{$commentform_data}</textarea><br />
                {serendipity_hookPlugin hook="frontend_comment" data=$commentform_entry}
          </div>
      
{if $is_commentform_showToolbar}
    <br />
         <div class="serendipity_commentsLabel">
                <input id="checkbox_remember" type="checkbox" name="serendipity[remember]" {$commentform_remember} /><label for="checkbox_remember">{$CONST.REMEMBER_INFO}</label>
    {if $is_allowSubscriptions}
                <br />
                <input id="checkbox_subscribe" type="checkbox" name="serendipity[subscribe]" {$commentform_subscribe} /><label for="checkbox_subscribe">{$CONST.SUBSCRIBE_TO_THIS_ENTRY}</label>
    {/if}
            </div>
       
{/if}

{if $is_moderate_comments}
<br />
       <div class="serendipity_commentsValue serendipity_msg_important">{$CONST.COMMENTS_WILL_BE_MODERATED}</div>
       
{/if}
          <br />
             <input type="submit" name="serendipity[submit]" value="{$CONST.SUBMIT_COMMENT}" /> <input type="submit" name="serendipity[preview]" value="{$CONST.PREVIEW}" />
        
    
    </form>
</div>
