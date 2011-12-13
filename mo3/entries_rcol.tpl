{serendipity_hookPlugin hook="entries_header" addData="$entry_id"}
{foreach from=$entries item="dategroup"}
{foreach from=$dategroup.entries item="entry"}
    <div class="clearfloat">
        <h3><a href="{foreach from=$entry.categories item="entry_category"}{$entry_category.category_link}{/foreach}">{foreach from=$entry.categories item="entry_category"}{$entry_category.category_name|@escape}{/foreach}</a></h3>

{if $entry.properties.ep_MimboImage != ''}
        <a href="{$entry.link}" rel="bookmark" title="Permanent link: {$entry.title}"><img src="{$entry.properties.ep_MimboImage}" /></a>
{/if}
        <a class="title" href="{$entry.link}" rel="bookmark">{$entry.title|@default:$entry.id}&raquo;</a>

        <div>{$entry.body|strip_tags|truncate:400:" ..."}</div>
    </div><!-- /.clearfloat -->
{/foreach}
{/foreach}
{serendipity_hookPlugin hook="entries_footer"}
