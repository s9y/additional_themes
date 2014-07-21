<!-- INDEX START -->
{if $is_embedded != true}
{if $is_xhtml}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
           "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
{else}
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
           "http://www.w3.org/TR/html4/loose.dtd">
{/if}

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang}" lang="{$lang}">
<head>
  <title>{$head_title|@default:$blogTitle} {if $head_subtitle} - {$head_subtitle}{/if}</title>
  <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
  <meta name="generator" content="Serendipity v.{$serendipityVersion}" />
  <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
  <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
  <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
  <link rel="icon" href="{serendipity_getFile file="img/favicon.ico"}" />
{if $entry_id}
  <link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />
{/if}

{serendipity_hookPlugin hook="frontend_header"}
</head>

<body>
{else}
{serendipity_hookPlugin hook="frontend_header"}
{/if}

<table width="720" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="10" background='{serendipity_getFile file="img/shadow-left.png"}'>&nbsp;</td>
    <td width="700">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><a href="{$serendipityBaseURL}"><img src='{serendipity_getFile file="img/banner-top.jpg"}' alt="{$blogTitle}" border="0" /></a></td>
      </tr>
      <tr>
        <td class="template_banner_title">
          <div id="serendipity_banner">
            <h1><a class="homelink1" href="{$serendipityBaseURL}">{$head_title|@default:$blogTitle|truncate:50:" ...":false}</a></h1>
            <h2><a class="homelink2" href="{$serendipityBaseURL}">{$head_subtitle|@default:$blogDescription}</a></h2>
          </div>
        </td>
      </tr>
      <tr>
        <td style="border-top: 1px solid #ffffff; background-color: #000000;">
          <div id="navcontainer">
            <ul id="navlist">
            <li id="active"><a href="#">button #1</a></li>
            <li><a href="#">button #1</a></li>
            <li><a href="#">button #1</a></li>
            <li><a href="#">button #1</a></li>
            <li><a href="#">button #1</a></li>
            </ul>
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <table id="mainpane">
            <tr>
              <td id="content" valign="top">{$CONTENT}</td>
              <td id="serendipityLeftSideBar" valign="top">
                {serendipity_printSidebar side="right"}
                {serendipity_printSidebar side="left"}
              </td>
              </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td class="template_banner_bottom">
          <table width="100%">
            <tr>
              <td width="50%">
                <p class="template_banner_bottom_left">{$CONST.POWERED_BY} <a href="http://www.s9y.org">Serendipity {$serendipityVersion}</a><br />Template by: <a href="http://costa.kofeina.net/">CoSTa</a></p>
              </td>
              <td width="50%">
                <p class="template_banner_bottom_right"><a href="{$serendipityBaseURL}">{$blogTitle}</a></p>
              </td>
            </tr>
          </table>
	</td>
      </tr>
    </table>
      </td>
    <td width="10" background='{serendipity_getFile file="img/shadow-right.png"}'>&nbsp;</td>
  </tr>
</table>

{$raw_data}
{serendipity_hookPlugin hook="frontend_footer"}
{if $is_embedded != true}
</body>
</html>
{/if}
<!-- INDEX END -->
