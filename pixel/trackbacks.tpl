<ul class="trackback">
{foreach from=$trackbacks item=trackback}
    <li id="li-comment-{$trackback.id}" class="comment depth-{$comment.depth+1} {cycle values="even,odd"} {cycle values="thread-even,thread-odd"}">
        <div id="comment-{$trackback.id}">
            <div class="commentbody">
                <cite><a href="{$trackback.url|@strip_tags}" {'blank'|@xhtml_target}>{$trackback.title} - {$trackback.author|@default:$CONST.ANONYMOUS}</a></cite>
                <br />
                <small class="commentmetadata">
                    <a href="#comment-{$trackback.id}">{$trackback.timestamp|@formatTime:'%b %d, %H:%M'}</a>
                {if $entry.is_entry_owner}
                    <a href="{$serendipityBaseURL}comment.php?serendipity[delete]={$trackback.id}&amp;serendipity[entry]={$trackback.entry_id}&amp;serendipity[type]=trackbacks">{$CONST.DELETE}</a>
                {/if}</small>
            </div>
            {$trackback.body|@strip_tags|@escape:all}
        </div>
    </li>
{foreachelse}
    <li class="nocomment">{$CONST.NO_TRACKBACKS}</li>
{/foreach}
</ul>
