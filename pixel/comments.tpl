<ul class="commentlist">
{foreach from=$comments item=comment name="comments"}
    <li id="li-comment-{$comment.id}" class="comment depth-{$comment.depth+1} {cycle values="even,odd"}" style="margin-left: {$comment.depth*10}px">
        <div id="comment-{$comment.id}">
        {if $comment.avatar}
            <a class="gravatar">{$comment.avatar}</a>
        {/if}
            <div class="commentbody">
                <cite>{if $comment.url}<a href="{$comment.url}" rel="external">{/if}{$comment.author|@default:$CONST.ANONYMOUS}{if $comment.url}</a>{/if}</cite>
                <br />
                <small class="commentmetadata">
                    <a href="#comment-{$comment.id}">{$comment.timestamp|@formatTime:$CONST.DATE_FORMAT_SHORT} {$CONST.AT} {$comment.timestamp|@formatTime:'%H:%m'}</a>
                {if $entry.is_entry_owner}
                    <a class="comment-edit-link" href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}');">{$CONST.DELETE}</a>
                {/if}</small>
            {if $comment.body == 'COMMENT_DELETED'}
                <p>{$CONST.COMMENT_IS_DELETED}</p>
            {else}
                {$comment.body}
            {/if}
            </div>
            
            <div class="cleared"></div>
        {if $entry.allow_comments AND $comment.body != 'COMMENT_DELETED'}
            <div class="reply">
                <a class="comment-reply-link" href="#serendipity_CommentForm" id="serendipity_reply_{$comment.id}" onclick="document.getElementById('serendipity_replyTo').value='{$comment.id}'; {$comment_onchange}">{$CONST.REPLY}</a>
                <div id="serendipity_replyform_{$comment.id}"></div>
            </div>
        {/if}
        </div>
    </li>
{foreachelse}
    <li class="nocomments">{$CONST.NO_COMMENTS}</li>
{/foreach}
</ul>
