<ol class="commentlist">
{foreach from=$comments item=comment name="comments"}
   <li id="c{$comment.id}">
       <div class="comment_mod"></div>

       <div class="comment_text">{if $comment.body == 'COMMENT_DELETED'}{$CONST.COMMENT_IS_DELETED}{else}{$comment.body}{/if}</div>

       <div class="comment_author">
           <p><strong>{if $comment.url}<a class="comment_source_url" href="{$comment.url}" title="{$comment.url|@escape}">{/if}{$comment.author|@default:$CONST.ANONYMOUS}{if $comment.url}</a>{/if}</strong></p>

           <p><small>{$comment.timestamp|@formatTime:'%d %b %y'} {$CONST.AT} <a href="#c{$comment.id}">{$comment.timestamp|@formatTime:'%H:%M'}</a>{if $entry.is_entry_owner} <a class="comment_source_ownerlink" href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}');">{$CONST.DELETE}</a>{/if}</small></p>

         {if $entry.allow_comments AND $comment.body != 'COMMENT_DELETED'}
           <p><small><a class="comment_reply" href="#serendipity_CommentForm" id="serendipity_reply_{$comment.id}" onclick="document.getElementById('serendipity_replyTo').value='{$comment.id}'; {$comment_onchange}">{$CONST.REPLY}</a></small></p>
           <div id="serendipity_replyform_{$comment.id}"></div>
         {/if}
       </div>

       <div class="clear"></div>
   </li>
{foreachelse}
    <li>{$CONST.NO_COMMENTS}</li>
{/foreach}
</ol>