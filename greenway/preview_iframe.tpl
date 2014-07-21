    <head>
        <title>{$CONST.SERENDIPITY_ADMIN_SUITE}</title>
        <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
        <meta name="generator" content="Serendipity v.{$serendipityVersion}" />
        <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
        <script type="text/javascript">
           window.onload = function() {ldelim}
             parent.document.getElementById('serendipity_iframe').style.height = document.getElementById('wrapper').offsetHeight
                                                                               + parseInt(document.getElementById('wrapper').style.marginTop)
                                                                               + parseInt(document.getElementById('wrapper').style.marginBottom)
                                                                               + 'px';
             parent.document.getElementById('serendipity_iframe').scrolling    = 'yes';
             parent.document.getElementById('serendipity_iframe').style.border = 0;
           {rdelim}
        </script>
    </head>

    <body style="background:#fff;margin:0;padding:0;">
        <div id="mainpane" style="padding: 0px; margin: 5px auto 5px auto; width: 98%;border:none;">
		<div id="wrapper" style="border:none;">
            <div id="content" style="padding: 5px; margin: 0px;">
            {$preview}
            </div>
		<div id="sidebar">&nbsp;</div>
        </div></div>
    </body>
