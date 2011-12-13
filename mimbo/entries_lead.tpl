{serendipity_hookPlugin hook="entries_header" addData="$entry_id"}
{foreach from=$entries item="dategroup"}
{foreach from=$dategroup.entries item="entry"}
{if $entry.properties.ep_MimboImage != ''}
    <a href="{$entry.link}" rel="bookmark" title="Permanent link: {$entry.title}"><img id="leadpic" src="{$entry.properties.ep_MimboImage}" alt="{$entry.properties.ep_MimboImageAlt}" /></a>
{/if}
    <h3><a href="{foreach from=$entry.categories item="entry_category"}{$entry_category.category_link}{/foreach}">{foreach from=$entry.categories item="entry_category"}{$entry_category.category_name|@escape}{/foreach}</a></h3>

    <a class="title" href="{$entry.link}" rel="bookmark">{$entry.title|@default:$entry.id}</a>

    {$entry.body}

{if $entry.has_extended and not $is_single_entry and not $entry.is_extended}
    <a href="{$entry.link}#extended" rel="bookmark">{$CONST.VIEW_EXTENDED_ENTRY|@sprintf:$entry.title}</a>
{/if}

{/foreach}
{/foreach}
{serendipity_hookPlugin hook="entries_footer"}
