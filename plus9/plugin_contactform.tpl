{if $plugin_contactform_articleformat}
    <h2>{$plugin_contactform_name}</h2>
{else}
    <h2>{$plugin_contactform_pagetitle}</h2>
{/if}

<div class="preface">{$plugin_contactform_preface}</div>

{if $is_contactform_sent}
<div class="serendipity_center serendipity_msg_notice">{$plugin_contactform_sent}</div>
{else}
  {if $is_contactform_error}
    <div class="warning">{$plugin_contactform_error}</div>

    <!-- Needed for Captchas -->
  {foreach from=$comments_messagestack item="message"}
    <div class="serendipity_center serendipity_msg_important">{$message}</div>
  {/foreach}
  {/if}

  <!-- This whole commentform style, including field names is needed for Captchas. -->
  <!-- The spamblock plugin relies on the field names [name], [email], [url], [comment]! -->

<div class="serendipityCommentForm">
    <a id="serendipity_CommentForm"></a>
    <form id="serendipity_comment" action="{$commentform_action}#feedback" method="post">
    <div>
        <input type="hidden" name="serendipity[subpage]" value="{$commentform_sname}" />
        <input type="hidden" name="serendipity[commentform]" value="true" />
    </div>
    <div id="commentform" class="postinput">
        <p><input class="comment" type="text" id="serendipity_commentform_name" name="serendipity[name]" value="{$commentform_name}" size="22" />
           <label for="serendipity_commentform_name"><small>{$CONST.NAME}</small></label></p>
        <p><input class="comment" type="text" id="serendipity_commentform_email" name="serendipity[email]" value="{$commentform_email}" size="22" />
           <label for="serendipity_commentform_email"><small>{$CONST.EMAIL}</small></label></p>
        <p><input class="comment" type="text" id="serendipity_commentform_url" name="serendipity[url]" value="{$commentform_url}" size="22" />
           <label for="serendipity_commentform_url"><small>{$CONST.HOMEPAGE}</small></label></p>
        <p><textarea rows="10" cols="100%" id="serendipity_commentform_comment" name="serendipity[comment]">{$commentform_data}</textarea>
           <label for="serendipity_commentform_comment"><small>{$CONST.COMMENT}</small></label></p>
        <!-- This is where the spamblock/Captcha plugin is called -->
        {serendipity_hookPlugin hook="frontend_comment" data=$commentform_entry}

        <p><input class="submit" type="submit" name="serendipity[submit]" value="{$CONST.SUBMIT_COMMENT}" /></p>
    </div>
    </form>
</div>
{/if}
