<ol class="commentlist">
{foreach from=$comments item=comment name="comments"}
   <li id="comment-{$comment.id}" class="{cycle values="alt,serendipity_comment"}">
       <a id="c{$comment.id}"></a>
       <small class="commentmetadata">
           <cite>{if $comment.url}<a href="{$comment.url}" title="{$comment.url|@escape}">{$comment.author|@default:$CONST.ANONYMOUS}</a>{else}{$comment.author|@default:$CONST.ANONYMOUS}{/if}</cite> {$CONST.ON} {$comment.timestamp|@formatTime:$CONST.DATE_FORMAT_SHORT}:{if $entry.is_entry_owner}(<a class="comment_source_ownerlink" href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}');">{$CONST.DELETE}</a>){/if}
       </small>
       {if $comment.body == 'COMMENT_DELETED'}
           {$CONST.COMMENT_IS_DELETED}
       {else}
           {$comment.body}
       {/if}
   </li>
{foreachelse}
   <li>{$CONST.NO_COMMENTS}</li>
{/foreach}
</ol>
