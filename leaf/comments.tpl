{foreach from=$comments item=comment}
    <a id="c{$comment.id}"></a>
    <div id="serendipity_comment_{$comment.id}" class="serendipity_comment serendipity_comment_author_{$comment.author|@makeFilename} {if $entry.author == $comment.author}serendipity_comment_author_self{/if}" style="padding-left: {$comment.depth*20}px">
		<div class="commentwrap">
        <div class="serendipity_commentSource">
            <a href="#c{$comment.id}" title="Link to comment #{$comment.trace}">#{$comment.trace}</a>
            {if $comment.email}
                <a href="mailto:{$comment.email}">{$comment.author|@default:$CONST.ANONYMOUS}</a>
            {else}
                {$comment.author|@default:$CONST.ANONYMOUS}
            {/if}
            {if $comment.url}
                wrote (<a href="{$comment.url}" title="{$comment.url|@escape}">Link</a>)
            {/if}


            {if $entry.is_entry_owner}
                (<a href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}');">delete</a>)
            {/if}
            {if $entry.allow_comments}
                (<a href="#serendipity_CommentForm" id="serendipity_reply_{$comment.id}" onclick="document.getElementById('serendipity_replyTo').value='{$comment.id}'; {$comment_onchange}">{$CONST.REPLY}</a>)
                <div id="serendipity_replyform_{$comment.id}"></div>
            {/if}
        </div>
        <div class="serendipity_commentBody">{$comment.body}</div>
        <div class="serendipity_commentFooter">posted {$CONST.ON} {$comment.timestamp|@formatTime:DATE_FORMAT_ENTRY}</div>
        </div>


    </div>
{foreachelse}
    <div class="serendipity_center">{$CONST.NO_COMMENTS}</div>
{/foreach}
