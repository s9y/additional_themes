{serendipity_hookPlugin hook="entries_header" addData="$entry_id"}
{foreach name="loop1" from=$entries item="dategroup"}
{foreach name="loop2" from=$dategroup.entries item="entry"}
{if $smarty.foreach.loop1.index==0 && $smarty.foreach.loop2.index==0}
    <h3><a href="{foreach from=$entry.categories item="entry_category"}{$entry_category.category_link}{/foreach}">{foreach from=$entry.categories item="entry_category"}{$entry_category.category_name|@escape}{/foreach}</a></h3>
{/if}
{/foreach}
{/foreach}

{foreach from=$entries item="dategroup"}
{foreach from=$dategroup.entries item="entry"}
    <div class="feature">
{if $entry.properties.ep_MimboImage != ''}
        <a href="{$entry.link}" rel="bookmark" title="Permanent link: {$entry.title}"><img src="{$entry.properties.ep_MimboImage}" /></a>
{/if}
        <a class="title" href="{$entry.link}" rel="bookmark">{$entry.title|@default:$entry.id}&raquo;</a>
    </div><!-- /.feature -->
{/foreach}
{/foreach}
{serendipity_hookPlugin hook="entries_footer"}
