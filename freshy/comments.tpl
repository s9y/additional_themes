<dl class="commentlist">
{foreach from=$comments item=comment name="comments"}
    <dt class="{if $entry.author == $comment.author}author_comment{else}none{/if}" >
    <small class="date">
					<span class="date_day">{$comment.timestamp|@formatTime:'%d'}</span>
					<span class="date_month">{$comment.timestamp|@formatTime:'%m'}</span>
					<span class="date_year">{$comment.timestamp|@formatTime:'%Y'}</span>
			</small>
    </dt>   
    <dd class="commentlist_item {cycle values="alt, "} {if $entry.author == $comment.author}author_comment{else}none{/if}" id="comment-{$comment.id}" style="padding-left: {$comment.depth*20+20}px !important;">
    
        <div class="comment">
        	<a class="comment_source_trace" href="#c{$comment.id}">#{$comment.trace}</a>
            <strong class="author">
            {if $comment.url}
                <a href="{$comment.url}" title="{$comment.url|@escape}">{$comment.author|@default:$CONST.ANONYMOUS}</a>
            {else}
                {$comment.author|@default:$CONST.ANONYMOUS}
            {/if}
            </strong>                    

            {if $entry.is_entry_owner}
                (<a class="comment_source_ownerlink" href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}');">{$CONST.DELETE}</a>)
            {/if}
            {if $entry.allow_comments}
                (<a class="comment_reply" href="#serendipity_CommentForm" id="serendipity_reply_{$comment.id}" onclick="document.getElementById('serendipity_replyTo').value='{$comment.id}'; {$comment_onchange}">{$CONST.REPLY}</a>)
                <div id="serendipity_replyform_{$comment.id}"></div>
            {/if}
            	<br style="display:none;"/>
            <div class="comment_text">{$comment.body}</div>
        </div>
    </dd>
{foreachelse}
   <dt> {$CONST.NO_COMMENTS}</dt>
{/foreach}
</dl>