{serendipity_hookPlugin hook="entries_header" addData="$entry_id"}
{foreach from=$entries item="dategroup"}
{foreach from=$dategroup.entries item="entry"}
  <a class="title" href="{$entry.link}" rel="bookmark">{$entry.title|@default:$entry.id}&raquo;</a>
        <div class="footertext">{$entry.body|strip_tags|truncate:100:" ..."}</div>
    
{/foreach}
{/foreach}
{serendipity_hookPlugin hook="entries_footer"}
