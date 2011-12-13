

<div align="center">
<table style="width: 100%" border="0" cellspacing="0" cellpadding="0" class="serendipity_calendar">
    <tr>
        <td class="serendipity_calendarHeader" align="center">
{if $plugin_calendar_head.minScroll le $plugin_calendar_head.month_date}
	<div class="calback"><a title="{$CONST.BACK}" href="{$plugin_calendar_head.uri_previous}"></a></div>
{/if}
        </td>

        <td colspan="5" class="serendipity_calendarHeader" style="text-align: center; vertical-align: middle">
         <a style="white-space: nowrap; font-weight: bold;" href="{$plugin_calendar_head.uri_month}">{$plugin_calendar_head.month_date|formatTime:"%B '%y":false}</a>
        </td>

        <td class="serendipity_calendarHeader" align="center">
{if $plugin_calendar_head.maxScroll ge $plugin_calendar_head.month_date}
            <div class="calfor"><a title="{$CONST.FORWARD}" href="{$plugin_calendar_head.uri_next}"></a></div>
{/if}
        </td>
    </tr>

    <tr>
    {foreach from=$plugin_calendar_dow item="dow"}
        <td scope="col" abbr="{$dow.date|@formatTime:"%A":false}" title="{$dow.date|@formatTime:"%A":false}" class="serendipity_weekDayName" align="center">{$dow.date|@formatTime:"%a":false|@truncate:2:'':true}</td>
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


</div>