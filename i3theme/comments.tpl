{assign var="i3says" value=$CONST.I3_SAYS}
<ol class="commentlist">
{foreach from=$comments item=comment name="comments"}
   <li id="comment-{$comment.id}" class="{cycle values="alt, even"}">
       <cite>{if $comment.url}<a href="{$comment.url}" title="{$comment.url|@escape}">{$comment.author|@default:$CONST.ANONYMOUS}</a>{else}{$comment.author|@default:$CONST.ANONYMOUS}{/if} {$i3says}:</cite><br />
       <small class="commentmetadata">
           <a id="c{$comment.id}">{$comment.timestamp|@formatTime:'%x %X'}</a>
           {if $entry.is_entry_owner}&bull; <a class="comment_source_ownerlink" href="{$comment.link_delete}" onclick="return confirm('{$CONST.COMMENT_DELETE_CONFIRM|@sprintf:$comment.id:$comment.author}');">{$CONST.DELETE}</a>{/if}
       </small>
       {if $comment.body == 'COMMENT_DELETED'}
       <p><em>{$CONST.COMMENT_IS_DELETED}</em></p>
       {else}
       <p>{$comment.body}</p>
       {/if}
   </li>
{foreachelse}
    <li class="alt">{$CONST.NO_COMMENTS}</li>
{/foreach}
</ol>
