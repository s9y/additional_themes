<?php
if (IN_serendipity !== true) {
  die ("Don't hack!");
}

$probelang = dirname(__FILE__) . '/' . $serendipity['charset'] . 'lang_' . $serendipity['lang'] . '.inc.php';

if (file_exists($probelang)) {
    include $probelang;
}

include dirname(__FILE__) . '/lang_en.inc.php';

$serendipity['smarty']->assign(array('currpage'=> "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']));

$template_config = array(
    array(
        'var'           => 'layout',
        'name'          => I3_LAYOUT,
        'type'          => 'select',
        'default'       => 'sbs',
        'select_values' => array('sbs' => 'S-B-S',
                                 'bss' => 'B-S-S',
                                 'ssb' => 'S-S-B')
    ),
    array(
        'var'           => 'infoxxx',
        'name'          => 'infoxxx',
        'type'          => 'custom',
        'custom'        => I3_DBX_INSTR,
    ),
    array(
        'var'           => 'dbx',
        'name'          => I3_DBX,
        'type'          => 'boolean',
        'default'       => 'false'
    ),
    array(
        'var'           => 'meta',
        'name'          => I3_META,
        'type'          => 'boolean',
        'default'       => 'true'
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
