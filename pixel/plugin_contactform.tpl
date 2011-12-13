<div class="topPost">
    <h2 class="topTitle">{if $plugin_contactform_articleformat}{$plugin_contactform_name}{else}{$plugin_contactform_pagetitle}{/if}</h2>
        
    <div>{$plugin_contactform_preface}</div>
    {if $is_contactform_sent}
    <p class="serendipity_msg_notice">{$plugin_contactform_sent}</p>
    {else}
    {if $is_contactform_error}
    <p class="serendipity_msg_important">{$plugin_contactform_error}</p>
    {foreach from=$comments_messagestack item="message"}
    <p class="serendipity_msg_important">{$message}</p>
    {/foreach}
    {/if}
    <div class="serendipityCommentForm">
        <a id="serendipity_CommentForm"></a>
        <form id="serendipity_comment" action="{$commentform_action}#feedback" method="post">
        <div>
        	<input type="hidden" name="serendipity[subpage]" value="{$commentform_sname}" />
		    <input type="hidden" name="serendipity[commentform]" value="true" />
	    </div>
	
	    <p><input type="text" id="serendipity_commentform_name" name="serendipity[name]" value="{$commentform_name}" size="22" />
	       <label for="serendipity_commentform_name"><small>{$CONST.NAME}</small></label></p>
	       
	    <p><input type="text" id="serendipity_commentform_email" name="serendipity[email]" value="{$commentform_email}" size="22" />
	       <label for="serendipity_commentform_email"><small>{$CONST.EMAIL}</small></label></p>
	       
	    <p><input type="text" id="serendipity_commentform_url" name="serendipity[url]" value="{$commentform_url}" size="22" />
	       <label for="serendipity_commentform_url"><small>{$CONST.HOMEPAGE}</small></label></p>
	       
	    <p><label for="serendipity_commentform_comment" class="invisible"><small>{$plugin_contactform_message}</small></label>
           <textarea rows="10" cols="100%" id="comment" name="serendipity[comment]">{$commentform_data}</textarea></p>
           
        {serendipity_hookPlugin hook="frontend_comment" data=$commentform_entry}
        
        <p><input type="submit" name="serendipity[submit]" value="{$CONST.SUBMIT_COMMENT}" /></p>
        </form>
    </div>
    {/if}
</div>
