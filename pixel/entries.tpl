{serendipity_hookPlugin hook="entries_header" addData="$entry_id"}
{assign var="pixmore" value=$CONST.PIX_MORE}
{assign var="pixforthis" value=$CONST.PIX_FORTHIS}
{foreach from=$entries item="dategroup"}
  {foreach from=$dategroup.entries item="entry"}
    {assign var="entry" value=$entry scope="parent"}
    <div class="topPost{if $dategroup.is_sticky} sticky{/if}">
        <h2 class="topTitle"><a href="{$entry.link}">{$entry.title}</a></h2>

        <p class="topMeta">{$CONST.POSTED_BY} <a href="{$entry.link_author}">{$entry.author}</a> {$CONST.ON} {$entry.timestamp|@formatTime:DATE_FORMAT_ENTRY}{if $entry.categories} {$CONST.IN} {foreach from=$entry.categories item="entry_category" name="categories"}<a href="{$entry_category.category_link}">{$entry_category.category_name|@escape}</a>{if not $smarty.foreach.categories.last}, {/if}{/foreach}{/if}</p>

        <div class="topContent">
            {$entry.body}
        {if $entry.is_extended}
            <div id="extended">{$entry.extended}</div>
        {/if}
        {if $entry.has_extended and not $is_single_entry and not $entry.is_extended}
            <p><a href="{$entry.link}#extended">{$CONST.VIEW_EXTENDED_ENTRY|@sprintf:$entry.title}</a></p>
        {/if}
        </div>
      {if $entry.has_comments and not $is_single_entry}
        <span class="topComments"><a href="{$entry.link}#comments">{$entry.comments} {$entry.label_comments}</a></span>
      {/if}
      {if not $is_single_entry}
        <span class="topMore"><a href="{$entry.link}">{$pixmore}...</a></span>
      {/if}
        <div class="cleared"></div>
        <div class="serendipity_footerplugins">
        {$entry.add_footer}
        {$entry.plugin_display_dat}
        </div>
        <div class="cleared"></div>
    </div>
    <br />
  {if $entry.is_entry_owner and not $is_preview}
    <small><a href="{$entry.link_edit}">{$CONST.EDIT_ENTRY}</a></small>
  {/if}
    <!--
    <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
             xmlns:trackback="http://madskills.com/public/xml/rss/module/trackback/"
             xmlns:dc="http://purl.org/dc/elements/1.1/">
    <rdf:Description
             rdf:about="{$entry.link_rdf}"
             trackback:ping="{$entry.link_trackback}"
             dc:title="{$entry.title_rdf|@default:$entry.title}"
             dc:identifier="{$entry.rdf_ident}" />
    </rdf:RDF>
    -->
  {if $is_single_entry and not $use_popups and not $is_preview}
    {if $CONST.DATA_UNSUBSCRIBED}
    <p class="serendipity_msg_notice">{$CONST.DATA_UNSUBSCRIBED|@sprintf:$CONST.UNSUBSCRIBE_OK}</p>
    {/if}
    {if $CONST.DATA_TRACKBACK_DELETED}
    <p class="serendipity_msg_notice">{$CONST.DATA_TRACKBACK_DELETED|@sprintf:$CONST.TRACKBACK_DELETED}</p>
    {/if}
    {if $CONST.DATA_TRACKBACK_APPROVED}
    <p class="serendipity_msg_notice">{$CONST.DATA_TRACKBACK_APPROVED|@sprintf:$CONST.TRACKBACK_APPROVED}</p>
    {/if}
    {if $CONST.DATA_COMMENT_DELETED}
    <p class="serendipity_msg_notice">{$CONST.DATA_COMMENT_DELETED|@sprintf:$CONST.COMMENT_DELETED}</p>
    {/if}
    {if $CONST.DATA_COMMENT_APPROVED}
    <p class="serendipity_msg_notice">{$CONST.DATA_COMMENT_APPROVED|@sprintf:$CONST.COMMENT_APPROVED}</p>
    {/if}
  {/if}

  {if $is_single_entry and not $is_preview}
    <div id="comments">
    {if $entry.comments > 0}
        <h3 id="commentstitle">{$entry.comments} {$entry.label_comments} {$pixforthis}</h3>

        <p>{$CONST.DISPLAY_COMMENTS_AS}
        {if $entry.viewmode eq $CONST.VIEWMODE_LINEAR}
            {$CONST.COMMENTS_VIEWMODE_LINEAR} | <a href="{$entry.link_viewmode_threaded}#comments" rel="nofollow">{$CONST.COMMENTS_VIEWMODE_THREADED}</a>
        {else}
            <a rel="nofollow" href="{$entry.link_viewmode_linear}#comments">{$CONST.COMMENTS_VIEWMODE_LINEAR}</a> | {$CONST.COMMENTS_VIEWMODE_THREADED}
        {/if}
        </p>
        {serendipity_printComments entry=$entry.id mode=$entry.viewmode}
    {/if}
    {if $entry.trackbacks > 0}
        <h3>{$entry.trackbacks} {$entry.label_trackbacks} {$pixforthis}</h3>
        {serendipity_printTrackbacks entry=$entry.id}
    {/if}
    {if $entry.is_entry_owner}
        {if $entry.allow_comments}
        <p><a href="{$entry.link_deny_comments}">{$CONST.COMMENTS_DISABLE}</a></p>
        {else}
        <p><a href="{$entry.link_allow_comments}">{$CONST.COMMENTS_ENABLE}</a></p>
        {/if}
    {/if}
        <div id="respond">
            <a id="feedback"></a>
            {foreach from=$comments_messagestack item="message"}
            <p class="serendipity_msg_important">{$message}</p>
            {/foreach}
        {if $is_comment_added}
            <p class="serendipity_msg_notice">{$CONST.COMMENT_ADDED}</p>
        {elseif $is_comment_moderate}
            <p class="serendipity_msg_notice">{$CONST.COMMENT_ADDED}<br />{$CONST.THIS_COMMENT_NEEDS_REVIEW}</p>
        {elseif not $entry.allow_comments}
            <p class="serendipity_msg_important">{$CONST.COMMENTS_CLOSED}</p>
        {else}
            <h3>{$CONST.ADD_COMMENT}</h3>
            {$COMMENTFORM}
        {/if}
        </div><!-- /#respond -->
    </div><!-- /#comments -->
  {/if}
  {if $is_single_entry and not $is_preview}
    <div id="extrastuff">
        <span id="rssleft"><a href="{$serendipityBaseURL}rss.php?version=2.0&amp;type=comments&amp;cid={$entry.id}"><abbr lang="en" title="Really Simple Syndication">RSS</abbr> Feed {$pixforthis} ({$CONST.COMMENTS})</a></span>
        <span id="trackright"><a rel="nofollow" style="font-weight: normal" href="{$entry.link_trackback}" onclick="alert('{$CONST.TRACKBACK_SPECIFIC_ON_CLICK|@escape:html}'); return false;" title="{$CONST.TRACKBACK_SPECIFIC_ON_CLICK|@escape}">TrackBack <abbr title="Uniform Resource Identifier">URI</abbr></a></span>
        <div class="cleared"></div>
    </div><!-- /#extrastuff -->
  {/if}
    {$entry.backend_preview}
{/foreach}
{foreachelse}
    {if not $plugin_clean_page}
    <p>{$CONST.NO_ENTRIES_TO_PRINT}</p>
    {/if}
{/foreach}
{serendipity_hookPlugin hook="entries_footer"}
<div id="nextprevious">
{if $footer_info}
    <p>{$footer_info}</p>
{/if}
{if $footer_prev_page}
<div class="alignleft"><a href="{$footer_prev_page}">&laquo; {$CONST.PREVIOUS_PAGE}</a></div>
{/if}
{if $footer_next_page}
<div class="alignright"><a href="{$footer_next_page}">{$CONST.NEXT_PAGE} &raquo;</a></div>
{/if}
</div>
