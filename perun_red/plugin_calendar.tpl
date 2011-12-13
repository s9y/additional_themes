<table cellspacing="0" cellpadding="0" class="serendipity_calendar">
    <tr>
        <th>
{if $plugin_calendar_head.minScroll le $plugin_calendar_head.month_date}
            <a title="{$CONST.BACK}" href="{$plugin_calendar_head.uri_previous}">&laquo;</a>
{/if}
        </th>

        <th colspan="5" style="text-align: center;">
            <b><a style="white-space: nowrap" href="{$plugin_calendar_head.uri_month}">{$plugin_calendar_head.month_date|formatTime:"%B '%y":false}</a></b>
        </th>

        <th>
{if $plugin_calendar_head.maxScroll ge $plugin_calendar_head.month_date}
            <a title="{$CONST.FORWARD}" href="{$plugin_calendar_head.uri_next}">&raquo;</a>
{/if}
        </th>
    </tr>

    <tr>
    {foreach from=$plugin_calendar_dow item="dow"}
        <td scope="col" abbr="{$dow.date|@formatTime:"%A":false}" title="{$dow.date|@formatTime:"%A":false}" class="serendipity_weekDayName" align="center">{$dow.date|@formatTime:"%a":false}</td>
    {/foreach}
    </tr>

    {foreach from=$plugin_calendar_weeks item="week"}
        <tr class="serendipity_calendar">
        {foreach from=$week.days item="day"}
            <td class="serendipity_calendarDay {$day.classes}"{if isset($day.properties.Title)} title="{$day.properties.Title}"{/if}>{if isset($day.properties.Active) and $day.properties.Active}<a href="{$day.properties.Link}">{/if}{$day.name|@default:"&#160;"}{if isset($day.properties.Active) and $day.properties.Active}</a>{/if}</td>
        {/foreach}
        </tr>
    {/foreach}
</table>
