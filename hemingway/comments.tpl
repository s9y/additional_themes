{if $entry.viewmode eq $CONST.VIEWMODE_LINEAR}
<ol id="comments">
{foreach from=$comments item=comment name="comments"}
    <a id="c{$comment.id}"></a>
    <li class="serendipity_comment_author_{$comment.author|@makeFilename} {if $entry.author == $comment.author}serendipity_comment_author_self{/if}">

	<cite>
            <span class="author">{if $comment.email}<a href="mailto:{$comment.email}">{$comment.author|@default:$CONST.ANONYMOUS}</a>
            {else}{$comment.author|@default:$CONST.ANONYMOUS}{/if}</span>
		<span class="date">{$comment.timestamp|@formatTime:$HEMINGWAY_DATE} / <a class="comment_source_trace" href="#c{$comment.id}" title="{$CONST.PERMALINK_COMMENT}">{$comment.timestamp|@formatTime:'%H:%M'}</a></span>
	</cite>
	<div class="content">
		{$comment.body}<br />
            {if $comment.url}
                (<a class="comment_source_url" href="{$comment.url}" title="{$comment.url|@escape}">Link</a>)
            {/if}
            {if $entry.allow_comments}
                (<a class="comment_reply" href="#serendipity_CommentForm" id="serendipity_reply_{$comment.id}" onclick="document.getElementById('serendipity_replyTo').value='{$comment.id}'; {$comment_onchange}">{$CONST.REPLY}</a>)
            {/if}
            {if $entry.is_entry_owner}
                (<a class="comment_source_ownerlink" href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}');">delete</a>){/if}
    </div><div class="clear"></div>
</li>
{/foreach}
</ol>
{else}
<ol id="comments">
{foreach from=$comments item=comment name="comments"}
    <li class="serendipity_comment_author_{$comment.author|@makeFilename} {if $entry.author == $comment.author}serendipity_comment_author_self{/if} ">
    <a id="c{$comment.id}"></a>
            <cite>
            <span class="author">{if $comment.email}<a href="mailto:{$comment.email}">{$comment.author|@default:$CONST.ANONYMOUS}</a>
            {else}{$comment.author|@default:$CONST.ANONYMOUS}{/if}</span>
		<span class="date">{$comment.timestamp|@formatTime:$HEMINGWAY_DATE} / <a class="comment_source_trace" href="#c{$comment.id}" title="{$CONST.PERMALINK_COMMENT}">{$comment.timestamp|@formatTime:'%H:%M'}</a></span>
	</cite>
		<div class="content {if $comment.depth >= 1}child{/if}">
		{$comment.body}<br />
            {if $comment.url}
                (<a class="comment_source_url" href="{$comment.url}" title="{$comment.url|@escape}">Link</a>)
            {/if}
            {if $entry.allow_comments}
                (<a class="comment_reply" href="#serendipity_CommentForm" id="serendipity_reply_{$comment.id}" onclick="document.getElementById('serendipity_replyTo').value='{$comment.id}'; {$comment_onchange}">{$CONST.REPLY}</a>)
            {/if}
            {if $entry.is_entry_owner}
                (<a class="comment_source_ownerlink" href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}');">delete</a>){/if}
</div><div class="clear"></div>
        </li>
{/foreach}
</ol>
{/if}