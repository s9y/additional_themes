    <head>
        <title>{$CONST.SERENDIPITY_ADMIN_SUITE}</title>
        <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
        <meta name="generator" content="Serendipity v.{$serendipityVersion}" />
        <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
{if $head_link_stylesheet_frontend}
    <link rel="stylesheet" href="{$head_link_stylesheet_frontend}">                                
{else}
    <link rel="stylesheet" href="{$serendipityHTTPPath}{$serendipityRewritePrefix}serendipity.css">
{/if}
        <link rel="stylesheet" type="text/css" href="{serendipity_getFile file="s9y.css"}" />
        <script type="text/javascript">
           window.onload = function() {ldelim}
             parent.document.getElementById('serendipity_iframe').style.height = document.getElementById('content').offsetHeight
                                                                               + parseInt(document.getElementById('content').style.marginTop)
                                                                               + parseInt(document.getElementById('content').style.marginBottom)
                                                                               + 'px';
             parent.document.getElementById('serendipity_iframe').scrolling    = 'no';
             parent.document.getElementById('serendipity_iframe').style.border = 0;
           {rdelim}
        </script>
    </head>

    <body id="home" style="padding: 0px; margin: 0px;">
        <div id="page" class="clearfloat" style="padding: 0px; margin: 0px;">
            <div id="content" style="padding: 0px; margin: 0px;">
                {$preview}
            </div>
        </div>
    </body>
