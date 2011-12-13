<table id="serendipity_calendar">
<caption class="invisible">{$CONST.CALENDAR}</caption>
<thead>
    <tr>
    {foreach from=$plugin_calendar_dow item="dow"}
        <th scope="col">{$dow.date|@formatTime:"%a":false}</th>
    {/foreach}
    </tr>
</thead>
<tfoot>
    <tr>
        <td id="prev-month">{if $plugin_calendar_head.minScroll le $plugin_calendar_head.month_date}<a title="{$CONST.BACK}" href="{$plugin_calendar_head.uri_previous}">&larr;<span class="invisible"> {$CONST.BACK}</span></a>{/if}</td>
        <td id="this-month" colspan="5"><a href="{$plugin_calendar_head.uri_month}">{$plugin_calendar_head.month_date|formatTime:"%B %Y":false}</a></td>
        <td id="next-month">{if $plugin_calendar_head.maxScroll ge $plugin_calendar_head.month_date}<a title="{$CONST.FORWARD}" href="{$plugin_calendar_head.uri_next}"><span class="invisible">{$CONST.FORWARD} </span>&rarr;</a>{/if}</td>
    </tr>
</tfoot>
<tbody>
    {foreach from=$plugin_calendar_weeks item="week"}
    <tr>
        {foreach from=$week.days item="day"}
        <td>{if isset($day.properties.Active) and $day.properties.Active}<a href="{$day.properties.Link}">{/if}{$day.name|@default:"&#160;"}{if isset($day.properties.Active) and $day.properties.Active}</a>{/if}</td>
        {/foreach}
    </tr>
    {/foreach}
</tbody>
</table>
