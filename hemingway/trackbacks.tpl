<div class="comment-head">
      <a id="trackbacks"></a>
<ol id="comments" class="pingback">
{foreach from=$trackbacks item=trackback}
	<a id="c{$trackback.id}"></a>
	<li class="pingback">
		<cite>
			<span class="author">{$trackback.timestamp|@formatTime:'%b %d, %H:%M'}</span>
		</cite>
        	<div class="content">
            	<em><a href="{$trackback.url|@strip_tags}" {'blank'|@xhtml_target}>{$trackback.title}</a></em><br />
            	{$trackback.body|@strip_tags|@escape:all}<br />
        		{if $entry.is_entry_owner}(<a href="{$serendipityBaseURL}comment.php?serendipity[delete]={$trackback.id}&amp;serendipity[entry]={$trackback.entry_id}&amp;serendipity[type]=trackbacks">{$CONST.DELETE}</a>)
		</div>
        {/if}
     </li><div class="clear"></div>
{/foreach}
</ol>
</div>
