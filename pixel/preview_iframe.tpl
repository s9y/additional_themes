{if $is_xhtml}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
           "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
{else}
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
           "http://www.w3.org/TR/html4/loose.dtd">
{/if}
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang}" lang="{$lang}">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
    <title>{$CONST.SERENDIPITY_ADMIN_SUITE}</title>
    <meta name="generator" content="Serendipity v.{$serendipityVersion}" />
    <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
{if $head_link_stylesheet_frontend}
    <link rel="stylesheet" href="{$head_link_stylesheet_frontend}">
{else}
    <link rel="stylesheet" href="{$serendipityHTTPPath}{$serendipityRewritePrefix}serendipity.css">
{/if}
    <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="s9y.css" frontend=true}" />
<!--[if lt IE 8]>
    <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="ie.css" frontend=true}" />
<![endif]-->
<!--[if lt IE 7]>
    <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="ie6.css" frontend=true}" />
    <script src="http://ie7-js.googlecode.com/svn/version/2.0(beta3)/IE7.js" type="text/javascript"></script>
<![endif]-->
<script type="text/javascript">
window.onload = function() {ldelim}
    parent.document.getElementById('serendipity_iframe').style.height = document.getElementById('contentwrapper').offsetHeight
                                                                      + parseInt(document.getElementById('contentwrapper').style.marginTop)
                                                                      + parseInt(document.getElementById('contentwrapper').style.marginBottom)
                                                                      + 'px';
    parent.document.getElementById('serendipity_iframe').scrolling    = 'no';
    parent.document.getElementById('serendipity_iframe').style.border = 0;
{rdelim}
</script>
</head>
<body style="background: #000; padding: 0px; margin: 0px;">
<div id="wrapper">
    <div id="main" style="padding: 0px; margin: 5px auto 5px auto; width: 98%;">
        <div id="contentwrapper" style="padding: 5px; margin: 0px;">
        {$preview}
        </div>
    </div>
</div>
</body>
</html>
