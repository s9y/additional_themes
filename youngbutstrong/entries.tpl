{serendipity_hookPlugin hook="entries_header" addData="$entry_id"}
{foreach from=$entries item="dategroup"}
{foreach from=$dategroup.entries item="entry"}
{assign var="entry" value=$entry scope=parent}
					<div class="clearfix"></div>
					<div class="content_date">
						<div class="content_month">{$entry.timestamp|formatTime:"%b"}</div>
					{$entry.timestamp|formatTime:"%d"}</div>
					<div class="content_post">
						<h2 class="content_title" id="post-{$entry.id}"><a href="{$entry.link}">{$entry.title}</a></h2>
						<hr />
						<div class="post_info">
							<div class="content_post_cat">
{if $entry.categories}
{foreach from=$entry.categories item="entry_category" name="categories"}<a href="{$entry_category.category_link}">{$entry_category.category_name|@escape}</a>{if not $smarty.foreach.categories.last}, {/if}{/foreach}
{else}
Uncategorized
{/if}
</div>
							<div class="content_post_comments"><img src="{serendipity_getFile file="images/comments.gif"}" alt="" /><a href="{$entry.link}#comments">{$entry.comments} comments</a></div>
							<div class="content_post_body">
{$entry.body}
{if $is_single_entry}
							<a id="extended"></a>
{$entry.extended}
{/if}
							</div>
						</div>
{$entry.plugin_display_dat}
{if $is_single_entry and not $use_popups and not $is_preview}
{if $CONST.DATA_UNSUBSCRIBED}					<br /><div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_UNSUBSCRIBED|@sprintf:$CONST.UNSUBSCRIBE_OK}</div><br />{/if}
{if $CONST.DATA_TRACKBACK_DELETED}					<br /><div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_TRACKBACK_DELETED|@sprintf:$CONST.TRACKBACK_DELETED}</div><br />{/if}
{if $CONST.DATA_TRACKBACK_APPROVED}					<br /><div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_TRACKBACK_APPROVED|@sprintf:$CONST.TRACKBACK_APPROVED}</div><br />{/if}
{if $CONST.DATA_COMMENT_DELETED}					<br /><div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_COMMENT_DELETED|@sprintf:$CONST.COMMENT_DELETED}</div><br />{/if}
{if $CONST.DATA_COMMENT_APPROVED}					<br /><div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_COMMENT_APPROVED|@sprintf:$CONST.COMMENT_APPROVED}</div><br />{/if}
					<h3><a id="trackbacks">{$CONST.TRACKBACKS}</a></h3>
					<a style="font-weight: normal" href="{$entry.link_trackback}" onclick="alert('{$CONST.TRACKBACK_SPECIFIC_ON_CLICK|@escape:html}'); return false;" title="{$CONST.TRACKBACK_SPECIFIC_ON_CLICK|@escape}">{$CONST.TRACKBACK_SPECIFIC}</a>
					<ol class="commentlist">
						{serendipity_printTrackbacks entry=$entry.id}
					</ol>
{/if}
{if $is_single_entry and not $is_preview}
					<h3><a id="comments">{$CONST.COMMENTS}</a></h3>
					<p>{$CONST.DISPLAY_COMMENTS_AS}
{if $entry.viewmode eq $CONST.VIEWMODE_LINEAR}
						({$CONST.COMMENTS_VIEWMODE_LINEAR} | <a rel="nofollow" href="{$entry.link_viewmode_threaded}#comments">{$CONST.COMMENTS_VIEWMODE_THREADED}</a>)
{else}
						(<a rel="nofollow" href="{$entry.link_viewmode_linear}#comments">{$CONST.COMMENTS_VIEWMODE_LINEAR}</a> | {$CONST.COMMENTS_VIEWMODE_THREADED})
{/if}</p>
					<ol class="commentlist">
						{serendipity_printComments entry=$entry.id mode=$entry.viewmode}
					</ol>

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
					<h3>{$CONST.ADD_COMMENT}</h3>
{$COMMENTFORM}

{/if}
{/if}
{$entry.backend_preview}
					</div>
	{/foreach}
{foreachelse}
	{if not $plugin_clean_page}
		{$CONST.NO_ENTRIES_TO_PRINT}
	{/if}
{/foreach}
    <div class="navigation">
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
