{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}
{foreach from=$plugindata item=item}
    <div class="serendipitySideBarItem container_{$item.class}">
        {if $item.title != ""}<h3 class="serendipitySideBarTitle {$item.class}">{$item.title}</h3>{/if}
        <div class="serendipitySideBarContent">{$item.content}</div>
    </div>
{/foreach}
{if $is_raw_mode}

</div>
{/if}
<div class="serendipitySideBarItem">
<h3 class="serendipitySideBarTitle"> External Links</h3>

 <img src="../templates/truth/img/nav_icon_l.gif" border ="0" width="29" height="13" />&nbsp;<a href="http://dhtmlnirvana.com/" title="link to DHTML Nirvana"> DHTML Nirvana</a><br />
 <img src="../templates/truth/img/nav_icon_l.gif" border ="0" width="29" height="13" />&nbsp;<a href="http://watchersgatelessgate.blogspot.com/" title="link to Watchers Blog"> Watchers'Blog</a> <br />
 <img src="../templates/truth/img/nav_icon_l.gif" border ="0" width="29" height="13" />&nbsp;<a href="http://www.enlightenment.com/" title="link to Enlightenment.com"> Enlightenment.com</a> <br />
</div>

