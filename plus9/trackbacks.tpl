<ol class="commentlist">
{foreach from=$trackbacks item=trackback}
   <li id="c{$trackback.id}">
       <div class="comment_mod"></div>

       <div class="comment_text">{$trackback.body|@strip_tags|@escape:all}</div>

       <div class="comment_author">
           <p><strong><a href="{$trackback.url|@strip_tags}" {'blank'|@xhtml_target}>{$trackback.author|@default:$CONST.ANONYMOUS}</a></strong></p>

           <p><small>{$trackback.timestamp|@formatTime:'%d %b %y'} {$CONST.AT} <a href="#c{$trackback.id}">{$trackback.timestamp|@formatTime:'%H:%M'}</a>{if $entry.is_entry_owner} <a href="{$serendipityBaseURL}comment.php?serendipity[delete]={$trackback.id}&amp;serendipity[entry]={$trackback.entry_id}&amp;serendipity[type]=trackbacks">{$CONST.DELETE}</a>{/if}</small></p>
       </div>

       <div class="clear"></div>
   </li>
{foreachelse}
   <li>{$CONST.NO_TRACKBACKS}</li>
{/foreach}
</ol>