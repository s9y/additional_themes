<?php
if (IN_serendipity !== true) {
  die ("Don't hack!");
}

@serendipity_plugin_api::load_language(dirname(__FILE__));

$serendipity['smarty']->assign(array('currpage'=> "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']));
$serendipity['smarty']->assign(array('currpage2'=> $_SERVER['REQUEST_URI']));

$template_config = array(
    array(
        'var'           => 'sidebars',
        'name'          => 'SIDEBAR_TITLE',
        'type'          => 'hidden',
        'value'       => 'top,left,hide,right,bot,',
    ),
    array(
        'var'           => 'showwelcome',
        'name'          => PIX_SHOWWELCOME,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'welcometitle',
        'name'          => PIX_WELCOMETITLE,
        'type'          => 'string',
        'default'       => '',
    ),
    array(
        'var'           => 'welcometext',
        'name'          => PIX_WELCOMETEXT,
        'type'          => 'text',
        'default'       => '',
    ),
    array(
        'var'           => 'myfeedname',
        'name'          => PIX_MYFBID,
        'type'          => 'string',
        'default'       => '',
    ),
    array(
        'var'           => 'amount',
        'name'          => NAVLINK_AMOUNT,
        'type'          => 'string',
        'default'       => '5',
    )
);

$template_config_groups = NULL;

$template_loaded_config = serendipity_loadThemeOptions($template_config, $serendipity['smarty_vars']['template_option']);

$navlinks = array();

for ($i = 0; $i < $template_loaded_config['amount']; $i++) {
    $navlinks[] = array(
        'title' => $template_loaded_config['navlink' . $i . 'text'],
        'href'  => $template_loaded_config['navlink' . $i . 'url']
    );
    $template_config[] = array(
        'var'           => 'navlink' . $i . 'text',
        'name'          => NAV_LINK_TEXT . ' #' . $i,
        'type'          => 'string',
        'default'       => 'Link #' . $i,
        );
    $template_config[] = array(
        'var'           => 'navlink' . $i . 'url',
        'name'          => NAV_LINK_URL . ' #' . $i,
        'type'          => 'string',
        'default'       => '#',
    );
}

$serendipity['smarty']->assign_by_ref('navlinks', $navlinks);
$topSidebarElements = serendipity_plugin_api::count_plugins('top');
$serendipity['smarty']->assign_by_ref('topSidebarElements', $topSidebarElements);
$botSidebarElements = serendipity_plugin_api::count_plugins('bot');
$serendipity['smarty']->assign_by_ref('botSidebarElements', $botSidebarElements);
