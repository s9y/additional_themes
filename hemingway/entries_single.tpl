<!-- ENTRIES START -->
	<div class="primary">
{serendipity_hookPlugin hook="entries_header" addData="$entry_id"}<!-- end of plugin hook -->
{foreach from=$entries item="dategroup"}

	{foreach from=$dategroup.entries item="entry"}
	<h1>{$entry.title|@default:$entry.id}</h1>
		<div class="serendipity_entry_body">
			{$entry.body}
            </div>
            {if $entry.is_extended}
            <div class="serendipity_entry_extended"><a id="extended"></a><br />{$entry.extended}</div>
            {/if}
            {if $entry.has_extended and not $is_single_entry and not $entry.is_extended}
            <br /><a href="{$entry.link}#extended">{$CONST.VIEW_EXTENDED_ENTRY|@sprintf:$entry.title}</a>
            {/if}
<p>{literal}<script type="text/javascript">
    if (typeof window.Delicious == "undefined") window.Delicious = {};
    Delicious.BLOGBADGE_DEFAULT_CLASS = 'delicious-blogbadge-line';
</script>
<script src="http://images.del.icio.us/static/js/blogbadge.js"></script>{/literal}</p>
		<!-- entry.add.footer begins -->{$entry.add_footer}{$entry.plugin_display_dat}
	</div>
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
<hr class="hide" />
	<div class='secondary'>
		<h2>About this entry</h2>
			<div class="featured">
			<p>You&rsquo;re currently reading &ldquo;{$entry.title|@default:$entry.id},&rdquo; an entry on {$blogTitle}</p>
			<dl>
			<dt>{$CONST.POSTED_BY}:</dt>
			<dd><a href="{$entry.link_author}">{$entry.author}</a> {if $dategroup.is_sticky}
				{$CONST.ON}
			{else}
				{$CONST.AT}
			{/if} <a href="{$entry.link}">{if not $dategroup.is_sticky}{$dategroup.date|@formatTime:$HEMINGWAY_DATE}{/if}</a> / {$entry.timestamp|@formatTime:'%H:%M'}<br />Last updated {$last_modified|@formatTime:$HEMINGWAY_DATE}</dd>
			</dl>
			{if $entry.categories}<dl>
			<dt>{$CONST.CATEGORY}:</dt>
			<dd>
			{foreach from=$entry.categories item="entry_category" name="categories"}<a href="{$entry_category.category_link}">{$entry_category.category_name|@escape}</a>{if not $smarty.foreach.categories.last}, {/if}{/foreach}			
			</dd>
			</dl>{/if}
			{if $entry.is_entry_owner and not $is_preview}<dl><dd><a href="{$entry.link_edit}">{$CONST.EDIT_ENTRY}</a></dd>
			</dl>
			{/if}
			</div>
	{serendipity_printSidebar side="detail"}
	</div>
<div class="clear"></div>
</div></div><!-- end Primary -->

<hr class="hide" />
<div id="secondary">
	<div class="inside">
		<div class="comment-head">
			<h2>{if $entry.comments == 0}{$CONST.NO_COMMENTS}{else}{$entry.comments} {if $entry.comments >= 2}{$CONST.COMMENTS}{else}{$CONST.COMMENT}{/if}{/if}</h2>
			<span class="details"><a href="#comment-form">Jump to comment form</a> | <a href="{$serendipityBaseURL}/feeds/comments.rss2">{$CONST.COMMENTS} RSS</a> | <a rel="nofollow" style="font-weight: normal" href="{$entry.link_trackback}" onclick="alert('{$CONST.TRACKBACK_SPECIFIC_ON_CLICK|@escape:html}'); return false;" title="{$CONST.TRACKBACK_SPECIFIC_ON_CLICK|@escape}">{$CONST.TRACKBACK_SPECIFIC}</a></span></div>

        {if $is_single_entry and not $use_popups and not $is_preview}
            {if $CONST.DATA_UNSUBSCRIBED}
                <br />{$CONST.DATA_UNSUBSCRIBED|@sprintf:$CONST.UNSUBSCRIBE_OK}<br />
            {/if}

            {if $CONST.DATA_TRACKBACK_DELETED}
                <br />{$CONST.DATA_TRACKBACK_DELETED|@sprintf:$CONST.TRACKBACK_DELETED}<br />
            {/if}

            {if $CONST.DATA_TRACKBACK_APPROVED}
                <br />{$CONST.DATA_TRACKBACK_APPROVED|@sprintf:$CONST.TRACKBACK_APPROVED}<br />
            {/if}

            {if $CONST.DATA_COMMENT_DELETED}
                <br />{$CONST.DATA_COMMENT_DELETED|@sprintf:$CONST.COMMENT_DELETED}<br />
            {/if}

            {if $CONST.DATA_COMMENT_APPROVED}
                <br />{$CONST.DATA_COMMENT_APPROVED|@sprintf:$CONST.COMMENT_APPROVED}<br />
            {/if}
        {/if}

        {if $is_single_entry and not $is_preview}
            {if $entry.trackbacks >= 1}{serendipity_printTrackbacks entry=$entry.id}{/if}
            
                 <a id="comments"></a>
		{if not $entry.comments == 0}
                <p>{$CONST.DISPLAY_COMMENTS_AS} {if $entry.viewmode eq $CONST.VIEWMODE_LINEAR}{$CONST.COMMENTS_VIEWMODE_LINEAR} | <a href="{$entry.link_viewmode_threaded}#comments">{$CONST.COMMENTS_VIEWMODE_THREADED}</a>)
                {else}(<a href="{$entry.link_viewmode_linear}#comments">{$CONST.COMMENTS_VIEWMODE_LINEAR}</a> | {$CONST.COMMENTS_VIEWMODE_THREADED})
                {/if}</p>
                {serendipity_printComments entry=$entry.id mode=$entry.viewmode}
		{/if}
		
                {if $entry.is_entry_owner}
                    {if $entry.allow_comments}
                    (<a href="{$entry.link_deny_comments}">{$CONST.COMMENTS_DISABLE}</a>)
                    {else}
                    (<a href="{$entry.link_allow_comments}">{$CONST.COMMENTS_ENABLE}</a>)
                    {/if}
                {/if}
		
                <a id="feedback"></a>

                {foreach from=$comments_messagestack item="message"}
                {$message}
                {/foreach}

                {if $is_comment_added}
                <br />
                {$CONST.COMMENT_ADDED}
                {elseif $is_comment_moderate}
                <br />
                {$CONST.COMMENT_ADDED}<br />{$CONST.THIS_COMMENT_NEEDS_REVIEW}
                {elseif not $entry.allow_comments}
                <br />
                {$CONST.COMMENTS_CLOSED}
                {else}
                {$COMMENTFORM}
                {/if}
        {/if}
	{$entry.backend_preview}
	{serendipity_hookPlugin hook="entries_footer"}
    {/foreach}
    {foreachelse}
    {if not $plugin_clean_page}
        {$CONST.NO_ENTRIES_TO_PRINT}
    {/if}
    {/foreach}
    {if $footer_info}
        ({$footer_info})
    {/if}
{if $is_single_entry}
{elseif !$is_static_page == "yes"}<!-- last block in entries_single.tpl -->
</div>
<hr class="hide" />
	<div class='secondary'>
    		<h2>{$template_option.about_title}</h2>
		<div class="featured">
		<p>{$template_option.about} {if $template_option.aboutpageurl != "#"}<a href="{$template_option.aboutpageurl}"> More &raquo;</a>{/if}</p>
		</div>
	</div>
{/if}
