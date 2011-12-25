{foreach from=$trackbacks item=trackback name="trackbacks"}
    <li class="{if $smarty.foreach.comments.iteration is odd}graybox{/if}">
        <a id="c{$trackback.id}"></a>
        <p><cite><a href="{$trackback.url|@strip_tags}" {'blank'|@xhtml_target}>{$trackback.title}</a></cite><br />
        {$trackback.body|@strip_tags|@escape:all}</p>
        <div class="commentmetadata">
            <b>Weblog:</b> {$trackback.author|@default:$CONST.ANONYMOUS} 
            ({$CONST.TRACKED}: {$trackback.timestamp|@formatTime:'%b %d, %H:%M'})
        {if $entry.is_entry_owner}
            (<a href="{$serendipityBaseURL}comment.php?serendipity[delete]={$trackback.id}&amp;serendipity[entry]={$trackback.entry_id}&amp;serendipity[type]=trackbacks">{$CONST.DELETE}</a>)
        {/if}
        </div>
    </li>
{foreachelse}
    <li class="nocomments">{$CONST.NO_TRACKBACKS}</li>
{/foreach}
