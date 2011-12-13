<div id="page-{$staticpage_pagetitle|@makeFilename}" class="topPost">
    <h2 class="topTitle">{if $staticpage_articleformat}{$staticpage_articleformattitle|@escape}{else}{$staticpage_headline|@escape}{/if}</h2>
    
    <div class="topContent">
    {if $staticpage_pass AND $staticpage_form_pass != $staticpage_pass}
        <form class="staticpage_password_form" action="{$staticpage_form_url}" method="post">
        <fieldset>
            <legend>{$CONST.STATICPAGE_PASSWORD_NOTICE}</legend>
            <input type="password" name="serendipity[pass]" value="" />
            <input type="submit" name="submit" value="{$CONST.GO}" />
        </fieldset>
        </form>
    {else}
        <div class="staticpage_precontent">
        {$staticpage_precontent}
        </div>
        {if is_array($staticpage_childpages)}
        <ul id="staticpage_childpages">
        {foreach from=$staticpage_childpages item="childpage"}
            <li><a href="{$childpage.permalink|@escape}" title="{$childpage.pagetitle|@escape}">{$childpage.pagetitle|@escape}</a></li>
        {/foreach}
        </ul>
        {/if}
        <div class="staticpage_content">
        {$staticpage_content}
        </div>
    {/if}
        <div class="cleared"></div>
    </div>
</div>
<br />
{if $staticpage_adminlink AND $staticpage_adminlink.page_user}
<small><a class="post-edit-link" href="{$staticpage_adminlink.link_edit}">{$staticpage_adminlink.link_name|@escape}</a></small>
{/if}
