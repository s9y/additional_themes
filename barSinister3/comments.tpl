{foreach from=$comments item=comment}
    <a id="c{$comment.id}"></a>
    <div class="serendipity_comment serendipity_comment_author_{$comment.author|@makeFilename} {if $entry.author == $comment.author}serendipity_comment_author_self{/if}">
        <div class="serendipity_comment_source">
            <span class="comment_left">{if $comment.email}
                <a href="mailto:{$comment.email}">{$comment.author|@default:$CONST.ANONYMOUS}</a> said:
            {else}
                {$comment.author|@default:$CONST.ANONYMOUS}
            {/if}
		{if $entry.is_entry_owner}
            (<a href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}');">delete</a>)
            {/if}
            {if $entry.allow_comments}
                (<a href="#serendipity_CommentForm" onclick="document.getElementById('serendipity_replyTo').value='{$comment.id}';">Reply</a>)
            {/if}
		</span>
	      <span class="comment_right">
			{if $comment.url}<a href="{$comment.url}" title="{$comment.url|@escape}">gotoSite();</a>{else}&nbsp;{/if}
		</span>
        </div>
        <div class="serendipity_commentBody">{$comment.body}</div>
        <br>{$CONST.ON}
            {$comment.timestamp|@formatTime:$CONST.DATE_FORMAT_SHORT}
    </div>
{foreachelse}
    <div class="serendipity_center">{$CONST.NO_COMMENTS}</div>
{/foreach}
