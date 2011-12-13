{foreach from=$comments item=comment name="comments"}
    <a id="c{$comment.id}"></a>
<div class="serendipity_comment serendipity_comment_author_{$comment.author|@makeFilename} {if $entry.author == $comment.author}serendipity_comment_author_self{/if} {cycle values="oddbox, evenbox"}" style="padding-left: {$comment.depth*20}px"> 
		<p>{if $comment.url}
                <a href="{$comment.url}" target="_blank">{$comment.author|@default:$CONST.ANONYMOUS}</a>
            {else}
                {$comment.author|@default:$CONST.ANONYMOUS}
            {/if} - <a href="#c{$comment.id}" title="{$CONST.LINK_TO_COMMENT|sprintf:$comment.trace}">#{$comment.trace}</a> -             {$comment.timestamp|@formatTime:$CONST.DATE_FORMAT_SHORT} - {if $entry.allow_comments}
                (<a href="#serendipity_CommentForm" onclick="document.getElementById('serendipity_replyTo').value='{$comment.id}';">{$CONST.REPLY}</a>)             {/if}{if $entry.is_entry_owner}
                (<a href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}');">{$CONST.DELETE}</a>)
            {/if}</p>
        <p>{$comment.body}</p>
	</div>
{foreachelse}
    <div class="serendipity_center">{$CONST.NO_COMMENTS}</div>
{/foreach}
