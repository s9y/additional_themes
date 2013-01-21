<!-- ENTRIES START -->
    {serendipity_hookPlugin hook="entries_header" addData="$entry_id"}

    {foreach from=$entries item="dategroup"}
    <div class="serendipity_Entry_Date">
        {foreach from=$dategroup.entries item="entry"}
        {assign var="entry" value=$entry scope=parent}
        <h3 class="serendipity_title"><a href="{$entry.link}">{$entry.title|@default:$entry.id}</a></h3>

        <div class="serendipity_entry serendipity_entry_author_{$entry.author|@makeFilename} {if $entry.is_entry_owner}serendipity_entry_author_self{/if}">
            <p class="day-date">{$CONST.POSTED_BY} <em><a href="{$entry.link_author}">{$entry.author}</a></em> {$CONST.ON} <em>{$entry.timestamp|@formatTime:DATE_FORMAT_ENTRY_BE_NICE}</em> {$CONST.AT} <em>{$entry.timestamp|@formatTime:'%H:%M'}</em><br />{if $entry.categories}{$CONST.FILED_UNDER}{foreach from=$entry.categories item="category" name="categories"}<a href="{$category.category_link}">{$category.category_name|@escape}</a>{if not $smarty.foreach.categories.last}, {/if}{/foreach} {/if}  {if $entry.is_entry_owner and not $is_preview}
                        <span class="editlink"><a href="{$entry.link_edit}">{$CONST.EDIT_ENTRY}</a></span>{/if}</p>
          {if $entry.categories}
            <span class="serendipity_entryIcon">
            {foreach from=$entry.categories item="category"}
                {if $category.category_icon}
                    <a href="{$category.category_link}"><img class="serendipity_entryIcon" title="{$category.category_name|@escape}{$category.category_description|@emptyPrefix}" alt="{$category.category_name|@escape}" src="{$category.category_icon}" /></a>
                {/if}
            {/foreach}
            </span>
            {/if}

            <div class="serendipity_entry_body">
                {$entry.multilingual_footer}{$entry.body}
            </div>
		{if $entry.has_extended and not $is_single_entry and not $entry.is_extended}
            <br /><a class="more" href="{$entry.link}#extended">{$CONST.VIEW_EXTENDED_ENTRY|@sprintf:$entry.title}</a>
            {/if}
            {if $entry.is_extended}
            <div class="serendipity_entry_extended"><a id="extended"></a>{$entry.extended}</div>
            {/if}
            <div class="serendipity_entryFooter">
		{$entry.add_footer}
		</div>
            {if not $is_single_entry and not $entry.is_extended}
            <div class='serendipity_entryFooter_comment'>
                 {if $entry.has_comments}
                    {if $use_popups}
                        <a href="{$entry.link_popup_comments}" onclick="window.open(this.href, 'comments', 'width=480,height=480,scrollbars=yes'); return false;">{if $entry.comments == 0}{$CONST.BE_FIRST_TO_COMMENT}{else}{$entry.comments} {$entry.label_comments}{/if}</a>
                    {else}
                       <a href="{$entry.link}#comments">{if $entry.comments == 0}{$CONST.BE_FIRST_TO_COMMENT}{else}{$entry.comments} {$entry.label_comments}{/if}</a>
                    {/if}
                {/if}
                {if $entry.has_trackbacks}
                    {if $use_popups}
                        <a class="serendipity_entryFooter_trackback" href="{$entry.link_popup_trackbacks}" onclick="window.open(this.href, 'comments', 'width=480,height=480,scrollbars=yes'); return false;">{$entry.trackbacks} {$entry.label_trackbacks}</a>
                    {else}
                        <a class="serendipity_entryFooter_trackback" href="{$entry.link}#trackbacks">{$entry.label_trackbacks} ({$entry.trackbacks})</a>
                    {/if}
                {/if}
               </div> 
	  {/if}
        {$entry.plugin_display_dat}            
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


        {if $is_single_entry and not $use_popups and not $is_preview}
            {if $CONST.DATA_UNSUBSCRIBED}
                <br /><div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_UNSUBSCRIBED|@sprintf:$CONST.UNSUBSCRIBE_OK}</div><br />
            {/if}

            {if $CONST.DATA_TRACKBACK_DELETED}
                <br /><div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_TRACKBACK_DELETED|@sprintf:$CONST.TRACKBACK_DELETED}</div><br />
            {/if}

            {if $CONST.DATA_TRACKBACK_APPROVED}
                <br /><div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_TRACKBACK_APPROVED|@sprintf:$CONST.TRACKBACK_APPROVED}</div><br />
            {/if}

            {if $CONST.DATA_COMMENT_DELETED}
                <br /><div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_COMMENT_DELETED|@sprintf:$CONST.COMMENT_DELETED}</div><br />
            {/if}

            {if $CONST.DATA_COMMENT_APPROVED}
                <br /><div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_COMMENT_APPROVED|@sprintf:$CONST.COMMENT_APPROVED}</div><br />
            {/if}
        {/if}

        {if $is_single_entry and not $is_preview}
            <div class="serendipity_comments">
                <br />
                <a id="trackbacks"></a>
                <div class="serendipity_commentsTitle">{if $entry.trackbacks == 0}{$CONST.TRACKBACKS}{else}{$entry.trackbacks} {if $entry.trackbacks >= 2}{$CONST.TRACKBACKS}{else}{$CONST.TRACKBACK}{/if}{/if}</div>
                    <div class="serendipity_center">
                        <a class="permalink" rel="nofollow" style="font-weight: normal" href="{$entry.link_trackback}" onclick="alert('{$CONST.TRACKBACK_SPECIFIC_ON_CLICK|@escape:html}'); return false;" title="{$CONST.TRACKBACK_SPECIFIC_ON_CLICK|@escape}">{$CONST.TRACKBACK_SPECIFIC}</a>
                    </div>
                    <br />
                        {serendipity_printTrackbacks entry=$entry.id}
            </div>
            <div class="serendipity_comments">
                <br />
                <a id="comments"></a>
                <div class="serendipity_commentsTitle">{if $entry.comments == 0}{$CONST.COMMENTS}{else}{$entry.comments} {if $entry.comments >= 2}{$CONST.COMMENTS}{else}{$CONST.COMMENT}{/if}{/if}</div>
                <div class="serendipity_center">{$CONST.DISPLAY_COMMENTS_AS}
                {if $entry.viewmode eq $CONST.VIEWMODE_LINEAR}
                    ({$CONST.COMMENTS_VIEWMODE_LINEAR} | <a href="{$entry.link_viewmode_threaded}#comments">{$CONST.COMMENTS_VIEWMODE_THREADED}</a>)
                {else}
                    (<a href="{$entry.link_viewmode_linear}#comments">{$CONST.COMMENTS_VIEWMODE_LINEAR}</a> | {$CONST.COMMENTS_VIEWMODE_THREADED})
                {/if}
                </div>
                <br />
			</div>
            <div class="serendipity_comments">
                    {serendipity_printComments entry=$entry.id mode=$entry.viewmode}
</div>
                {if $entry.is_entry_owner}
                    {if $entry.allow_comments}
                    <div class="serendipity_center">(<a href="{$entry.link_deny_comments}">{$CONST.COMMENTS_DISABLE}</a>)</div>
                    {else}
                    <div class="serendipity_center">(<a href="{$entry.link_allow_comments}">{$CONST.COMMENTS_ENABLE}</a>)</div>
                    {/if}
                {/if}
                <a id="feedback"></a>

                {foreach from=$comments_messagestack item="message"}
                <div class="serendipity_center serendipity_msg_important">{$message}</div>
                {/foreach}

                {if $is_comment_added}

                <br />
                <div class="serendipity_center serendipity_msg_notice">{$CONST.COMMENT_ADDED}</div>

                {elseif $is_comment_moderate}

                <br />
                <div class="serendipity_center serendipity_msg_notice">{$CONST.COMMENT_ADDED}<br />{$CONST.THIS_COMMENT_NEEDS_REVIEW}</div>

                {elseif not $entry.allow_comments}

                <br />
                <div class="serendipity_center serendipity_msg_important">{$CONST.COMMENTS_CLOSED}</div>

                {else}

                <br />
                <div class="serendipity_commentsTitle">{$CONST.ADD_COMMENT}</div>
                {$COMMENTFORM}

                {/if}

        {/if}

        {$entry.backend_preview}
        {/foreach}
    </div>
    {foreachelse}
    {if not $plugin_clean_page}
         <h3 class="serendipity_title"><a href="{$serendipityBaseURL}">{$CONST.SORRY}</a></h3>
            <div class="serendipity_entry_body">
        {$CONST.NO_ENTRIES_TO_PRINT}</div>
    {/if}
    {/foreach}
{if $footer_info}
    <div class='center'>
	{if $footer_info}
		{if $footer_prev_page}
		<span class="previous"><a href="{$footer_prev_page}">&laquo; {$CONST.PREVIOUS_PAGE}</a></span>
		{else}
		<span class="previous">&#160;</span>
		{/if}
	{else}
	{/if}

	{if $footer_info}
		<span class="entries_info">({$footer_info})</span>
	{/if}

	{if $footer_info}
		{if $footer_next_page}
		<span class="next"><a href="{$footer_next_page}">{$CONST.NEXT_PAGE} &raquo;</a></span>
		{else}
		<span class="next">&#160;</span>
		{/if}
	{else}
	{/if}



    {serendipity_hookPlugin hook="entries_footer"}
    </div>{/if}
<!-- ENTRIES END -->
