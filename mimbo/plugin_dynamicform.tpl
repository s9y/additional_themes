<h3 id="response">{$plugin_contactform_pagetitle}</h3>
            
<div id="contactpreface">{$plugin_contactform_preface}</div>

{if $is_contactform_sent}
<div class="serendipity_center serendipity_msg_notice">	{$plugin_contactform_sent}</div>
{else}
    {if $is_contactform_error}
    <div class="serendipity_center serendipity_msg_important">{$plugin_contactform_error}</div>
    <!-- Needed for Captchas -->
    {foreach from=$comments_messagestack item="message"}
    <div class="serendipity_center serendipity_msg_important">{$message}</div>
    {/foreach}
    {/if}

    <div class="serendipityCommentForm">
        <a id="serendipity_CommentForm"></a>
        <form id="commentform" action="{$commentform_action}#feedback" method="post">
        <div>
            <input type="hidden" name="serendipity[subpage]" value="{$commentform_sname}" />
            <input type="hidden" name="serendipity[commentform]" value="true" />
{foreach name="field" from=$commentform_dynamicfields item="field"}
    {if $field.type == "hidden"}
            <input type="hidden" name="serendipity[{$field.id}]" value="{$field.default}" />
    {/if}
{/foreach}
        </div>

{foreach name="field" from=$commentform_dynamicfields item="field"}
    {if $field.type != "hidden"}
        <p>
        {if $field.type == "checkbox"}
           <input type="checkbox" name="{$field.id}" id="{$field.id}" {$field.default} /><label for="{$field.id}"><small>{$field.message}</small></label>
        {elseif $field.type == "radio"}
        {foreach name="radio_option" from=$field.options item="option"}
           <input type="radio" name="{$field.id}" id="{$field.id}.{$option.id}" value="{$option.value}" {$option.default} /><label for="{$field.id}.{$option.id}"><small>{$option.name}</small></label>
        {/foreach}
        {elseif $field.type == "select"}
           <select name="{$field.id}">
        {foreach name="radio_option" from=$field.options item="option"}
               <option name="{$field.id}" id="{$field.id}.{$option.id}" value="{$option.value}" {$option.default} >{$option.name}</option>
        {/foreach}
           </select>
        {elseif $field.type == "password"}
           <input type="password" id="serendipity_commentform_{$field.id}" name="serendipity[{$field.id}]" value="{$field.default}" size="22" />
        {elseif $field.type == "textarea"}
           <textarea rows="10" cols="100%" id="serendipity_commentform_{$field.id}" name="serendipity[{$field.id}]">{$field.default}</textarea><br />
        {else}
           <input type="text" id="serendipity_commentform_{$field.id}" name="serendipity[{$field.id}]" value="{$field.default}" size="22" />
        {/if}
        {if $field.required}<sup>*</sup>{/if}<label for="serendipity_commentform_{$field.id}"><small>{$field.name}</small></label></p>
    {/if}
{/foreach}
        <div><!-- This is where the spamblock/Captcha plugin is called -->
             {serendipity_hookPlugin hook="frontend_comment" data=$commentform_entry}</div>

        <p><input type="submit" class="button" name="serendipity[submit]" value="{$CONST.SUBMIT_COMMENT}" /></p>
        </form>
    </div>
{/if}
