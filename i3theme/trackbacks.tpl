<ol class="commentlist">
{foreach from=$trackbacks item=trackback}
   <li id="trackback-{$trackback.id}" class="{cycle values="alt, even"}">
       <cite>{$trackback.author|@default:$CONST.ANONYMOUS}</cite><br />
       <small class="commentmetadata">
           <a id="c{$trackback.id}">{$trackback.timestamp|@formatTime:'%x %X'}</a>
           {if $entry.is_entry_owner}&bull; <a href="{$serendipityBaseURL}comment.php?serendipity[delete]={$trackback.id}&amp;serendipity[entry]={$trackback.entry_id}&amp;serendipity[type]=trackbacks">{$CONST.DELETE}</a>{/if}
       </small>
       <p><a href="{$trackback.url|@strip_tags}" {'blank'|@xhtml_target}>{$trackback.title}</a><br />
          {$trackback.body|@strip_tags|@escape:all}</p>
   </li>
{foreachelse}
   <li class="alt">{$CONST.NO_TRACKBACKS}</li>
{/foreach}
</ol>
