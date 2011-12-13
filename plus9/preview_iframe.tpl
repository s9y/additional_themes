    <head>
        <title>{$CONST.SERENDIPITY_ADMIN_SUITE}</title>
        <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
        <meta name="Powered-By" content="Serendipity v.{$head_version}" />
        <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
        <link rel="stylesheet" href="{serendipity_getFile file="s9y.css"}" type="text/css" />
        <script type="text/javascript">
           window.onload = function() {ldelim}
             parent.document.getElementById('serendipity_iframe').style.height = document.getElementById('container').offsetHeight
                                                                               + parseInt(document.getElementById('container').style.marginTop)
                                                                               + parseInt(document.getElementById('container').style.marginBottom)
                                                                               + 'px';
             parent.document.getElementById('serendipity_iframe').scrolling    = 'no';
             parent.document.getElementById('serendipity_iframe').style.border = 0;
           {rdelim}
        </script>
    </head>

    <body style="padding: 0; margin: 0;">
        <div id="container" class="group" style="padding: 0; margin: 5px auto 5px auto; width: 98%;">
            <div id="content" class="group" style="padding: 5px; margin: 0;">
            {$preview}
            </div>
        </div>
    </body>
