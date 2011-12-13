{serendipity_hookPlugin hook="entries_header"}
<h2>{$CONST.TOPICS_OF} {$dateRange.0|@formatTime:"%B, %Y"}</h2>

<ul class="posts">
{foreach from=$entries item="entries"}
{foreach from=$entries.entries item="entry"}
   <li><h3><a rel="bookmark" href="{$entry.link}" title="Permanent link: {$entry.title}">{$entry.title}</a></h3>
       <p>{$CONST.POSTED_BY} {$entry.author} {$CONST.ON} {$entry.timestamp|@formatTime:DATE_FORMAT_ENTRY}</p>
   </li>
{/foreach}
{/foreach}
</ul>

<div class='serendipity_entryFooter' style="text-align: center">
{serendipity_hookPlugin hook="entries_footer"}
</div>
