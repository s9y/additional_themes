<!-- ENTRIES START -->
    {serendipity_hookPlugin hook="entries_header" addData="$entry_id"}
        {foreach from=$entries item="dategroup"}
    

        {foreach from=$dategroup.entries item="entry"}
        <div class="post" id="post-{$entry.id}">
     
        <h2><a href="{$entry.link}" rel="bookmark" title="{$entry.title}">{$entry.title}</a></h2>
			<small class="date">
					<span class="date_day">{$dategroup.date|@formatTime:'%d'}</span>
					<span class="date_month">{$dategroup.date|@formatTime:'%m'}</span>
					<span class="date_year">{$dategroup.date|@formatTime:'%Y'}</span>
			</small>
            {if $entry.categories}
            {foreach from=$entry.categories item="entry_category"}
                {if $entry_category.category_icon}
                    <a href="{$entry_category.category_link}"><img class="serendipity_entryIcon" title="{$entry_category.category_name|@escape}{$entry_category.category_description|@emptyPrefix}" alt="{$entry_category.category_name|@escape}" src="{$entry_category.category_icon}" /></a>
                {/if}
            {/foreach}
            {/if}

            <div class="entry">
                {$entry.body}
            </div>

            {if $entry.is_extended}
            <div class="serendipity_entry_extended"><a id="extended"></a>{$entry.extended}</div>
            {/if}

            {if $entry.has_extended and not $is_single_entry and not $entry.is_extended}
            <br /><a href="{$entry.link}#extended">{$CONST.VIEW_EXTENDED_ENTRY|@sprintf:$entry.title}</a><br /><br />
            {/if}

            <small class='postmetadata'>
            	{if $entry.has_comments}
                    {$entry.label_comments} :
            		{if $use_popups}
                         <a href="{$entry.link_popup_comments}" onclick="window.open(this.href, 'comments', 'width=580,height=480,scrollbars=yes'); return false;" title="Comment on {$entry.title}">{if $entry.comments==0} {$CONST.NO_COMMENTS}{else} {$entry.comments} {$entry.label_comments}  {/if} &#187;</a>
                    {else}
                        <a href="{$entry.link}#comments" title="Comment on {$entry.title}">{if $entry.comments==0}{$CONST.NO_COMMENTS}{else} {$entry.comments} {$entry.label_comments}  {/if} &#187;</a>
                    {/if}
                    <br />
                {/if}    
            
                {if $entry.categories}
                   {$CONST.CATEGORIES} : {foreach from=$entry.categories item="entry_category" name="categories"}<a href="{$entry_category.category_link}">{$entry_category.category_name|@escape}</a>{if not $smarty.foreach.categories.last}, {/if}{/foreach}<br />
                {/if}
                {if $entry.has_trackbacks}
                    {$CONST.TRACKBACKS} : 
                    {if $use_popups}
                         <a href="{$entry.link_popup_trackbacks}" onclick="window.open(this.href, 'comments', 'width=480,height=480,scrollbars=yes'); return false;">{if $entry.trackbacks==0}{$CONST.NO_TRACKBACKS}{else}{$entry.trackbacks} {$entry.label_trackbacks} {/if}&#187;</a>
                    {else}
                       <a href="{$entry.link}#trackbacks">{if $entry.trackbacks==0}{$CONST.NO_TRACKBACKS}{else}{$entry.trackbacks} {$entry.label_trackbacks}{/if} &#187;</a>
                    {/if}<br />
                {/if}

                {if $entry.is_entry_owner and not $is_preview}
                        {$CONST.EDIT} : <a href="{$entry.link_edit}">{$CONST.EDIT_ENTRY}</a>
                {/if}

                {$entry.add_footer}
            </small>
       
        </div>
        <!--
        <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                 xmlns:trackback="http://madskills.com/public/xml/rss/module/trackback/"
                 xmlns:dc="http://purl.org/dc/elements/1.1/">
        <rdf:Description
                 rdf:about="{$entry.link_rdf}"
                 trackback:ping="{$entry.link_trackback}"
                 dc:title="{$entry.title}"
                 dc:identifier="{$entry.rdf_ident}" />
        </rdf:RDF>
        -->
        	<hr style="display:none;"/>
        {$entry.plugin_display_dat}

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

            <div class="serendipity_comments serendipity_section_trackbacks">
                <br />
                <a id="trackbacks"></a>
                <h3 id="trackbacks_style">{$CONST.TRACKBACKS}</h3>
                    <div class="serendipity_center">
                        <a rel="nofollow" style="font-weight: normal" href="{$entry.link_trackback}" onclick="alert('{$CONST.TRACKBACK_SPECIFIC_ON_CLICK|@escape:html}'); return false;" title="{$CONST.TRACKBACK_SPECIFIC_ON_CLICK|@escape}">{$CONST.TRACKBACK_SPECIFIC}</a>
                    </div>
                    <br />
                        {serendipity_printTrackbacks entry=$entry.id}
            </div>
        {/if}

        {if $is_single_entry and not $is_preview}
            
                <h3 id="comments">{$CONST.COMMENTS}</h3>
                {$CONST.DISPLAY_COMMENTS_AS}
                {if $entry.viewmode eq $CONST.VIEWMODE_LINEAR}
                    ({$CONST.COMMENTS_VIEWMODE_LINEAR} | <a rel="nofollow" href="{$entry.link_viewmode_threaded}#comments">{$CONST.COMMENTS_VIEWMODE_THREADED}</a>)
                {else}
                    (<a rel="nofollow" href="{$entry.link_viewmode_linear}#comments">{$CONST.COMMENTS_VIEWMODE_LINEAR}</a> | {$CONST.COMMENTS_VIEWMODE_THREADED})
                {/if}
                                <br />
                    {serendipity_printComments entry=$entry.id mode=$entry.viewmode}

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

               {if $is_comment_added and not $is_moderate_comments}

                <br />
                <div class="serendipity_center serendipity_msg_notice">{$CONST.COMMENT_ADDED}</div>

                {elseif $is_comment_moderate or ($is_moderate_comments and $is_comment_added)}

                <br />
                <div class="serendipity_center serendipity_msg_notice">{$CONST.COMMENT_ADDED}<br />{$CONST.THIS_COMMENT_NEEDS_REVIEW}</div>

                {elseif not $entry.allow_comments}

                <br />
                <div class="serendipity_center serendipity_msg_important">{$CONST.COMMENTS_CLOSED}</div>

                {else}
                <br />
            
	                <h3 id="respond">{$CONST.ADD_COMMENT}</h3>
	                {$COMMENTFORM}
               {/if}
            
        {/if}

        {$entry.backend_preview}
        {/foreach}
    
    {foreachelse}
    {if not $plugin_clean_page}
        {$CONST.NO_ENTRIES_TO_PRINT}
    {/if}
    {/foreach}

    <div class='serendipity_entryFooter' style="text-align: center">
    {if $footer_prev_page}
        <a href="{$footer_prev_page}">&laquo; {$CONST.PREVIOUS_PAGE}</a>&#160;&#160;
    {/if}

    {if $footer_info}
        ({$footer_info})
    {/if}

    {if $footer_next_page}
        <a href="{$footer_next_page}">&raquo; {$CONST.NEXT_PAGE}</a>
    {/if}

    {serendipity_hookPlugin hook="entries_footer"}
    </div>
<!-- ENTRIES END -->
        
