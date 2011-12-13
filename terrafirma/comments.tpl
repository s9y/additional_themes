{if $entry.viewmode eq $CONST.VIEWMODE_LINEAR}
<ol><div id="commentlist">
{foreach from=$comments item=comment name="comments"}
    <a id="c{$comment.id}"></a>
    <div id="serendipity_comment_{$comment.id}" class="serendipity_comment serendipity_comment_author_{$comment.author|@makeFilename} {if $entry.author == $comment.author}serendipity_comment_author_self{/if}{cycle values="comment_oddbox, comment_evenbox"}">

        <div class="serendipity_comment_source">
            <div class="comment_source_author">
            {if $comment.email}
              <a href="mailto:{$comment.email}"><img src="templates/terrafirma/img/comment.gif" style="border:0px";> {$comment.author|@default:$CONST.ANONYMOUS}s {$CONST.EMAIL}</a> + <a href="{$comment.url|@escape}"><img src="templates/terrafirma/img/trackback.gif" style="border:0px";> {$comment.author|@default:$CONST.ANONYMOUS}s {$CONST.HOMEPAGE}</a>
            {else}
                <a href="{$comment.url|@escape}"><img src="templates/terrafirma/img/comment.gif" style="border:0px";> {$comment.author|@default:$CONST.ANONYMOUS}:</a>
            {/if}</div>
		
<div id="serendipity_replyform_{$comment.id}"></div>
        </div>
        <div class="serendipity_commentBody">{$comment.body}</div>
		
		<p class="commentmeta">
            <span class="comment_source_date">{$comment.timestamp|@formatTime:$CONST.DATE_FORMAT_ENTRY} {$CONST.AT} <a class="comment_source_trace" href="#c{$comment.id}" title="{$CONST.PERMALINK_COMMENT}">{$comment.timestamp|@formatTime:'%H:%M'}</a> </span>
            {if $comment.url}
                (<a class="comment_source_url" href="{$comment.url}" title="{$comment.url|@escape}">Link</a>)
            {/if}
            {if $entry.allow_comments}
                (<a class="comment_reply" href="#serendipity_CommentForm" id="serendipity_reply_{$comment.id}" onclick="document.getElementById('serendipity_replyTo').value='{$comment.id}'; {$comment_onchange}">{$CONST.REPLY}</a>)
            {/if}
            {if $entry.is_entry_owner}
                (<a class="comment_source_ownerlink" href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}');">delete</a>){/if}</p>
    </div>
{foreachelse}
    <div class="serendipity_center nocomments">{$CONST.NO_COMMENTS}</div>
{/foreach}
</div></ol>
{else}
<div id="commentlist">
{foreach from=$comments item=comment name="comments"}
    <div id="serendipity_comment_{$comment.id}" class="serendipity_comment serendipity_comment_author_{$comment.author|@makeFilename} {if $entry.author == $comment.author}serendipity_comment_author_self{/if} {if $comment.depth == 0}comment_threaded_child0 {elseif $comment.depth == 1}comment_threaded_child1{else}comment_threaded_child2{/if}">
    <a id="c{$comment.id}"></a>
        <div class="serendipity_comment_source">
            <div class="comment_source_author">
            {if $comment.email}
                <a href="mailto:{$comment.email}"><img src="templates/terrafirma/img/comment.gif" style="border:0px";> {$comment.author|@default:$CONST.ANONYMOUS}s {$CONST.EMAIL}</a> + <a href="{$comment.url|@escape}"><img src="templates/terrafirma/img/trackback.gif" style="border:0px";> {$comment.author|@default:$CONST.ANONYMOUS}s {$CONST.HOMEPAGE}</a>
            {else}
                <a href="{$comment.url|@escape}"><img src="templates/terrafirma/img/comment.gif" style="border:0px";> {$comment.author|@default:$CONST.ANONYMOUS}:</a>
            {/if}</div>
		
<div id="serendipity_replyform_{$comment.id}"></div>
        </div>
        <div class="serendipity_commentBody">{$comment.body}</div>
		<p class="commentmeta">
            <span class="comment_source_date">{$comment.timestamp|@formatTime:$CONST.DATE_FORMAT_ENTRY} {$CONST.AT} <a class="comment_source_trace" href="#c{$comment.id}" title="{$CONST.PERMALINK_COMMENT}">{$comment.timestamp|@formatTime:'%H:%M'}</a> </span>
            {if $comment.url}
                (<a class="comment_source_url" href="{$comment.url}" title="{$comment.url|@escape}">Link</a>)
            {/if}
            {if $entry.allow_comments}
                (<a class="comment_reply" href="#serendipity_CommentForm" id="serendipity_reply_{$comment.id}" onclick="document.getElementById('serendipity_replyTo').value='{$comment.id}'; {$comment_onchange}">{$CONST.REPLY}</a>)
            {/if}
            {if $entry.is_entry_owner}
                (<a class="comment_source_ownerlink" href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}');">delete</a>){/if}</p>
    </div>
{foreachelse}
    <div class="serendipity_center nocomments">{$CONST.NO_COMMENTS}</div>
{/foreach}
</div>
{/if}