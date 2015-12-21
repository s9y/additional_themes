<?php
// Be nice to the frontend users. They don't need the additional constants
// and file lookups. Only load them when in Admin mode.
if ($serendipity['GET']['adminModule'] == 'templates' || $serendipity['POST']['adminModule'] != 'templates') {
    // Probe for a language include with constants. Still include defines
    // later on, if some constants were missing
    $probelang = dirname(__FILE__) . '/' . $serendipity['charset'] . 'lang_' . $serendipity['lang'] . '.inc.php';

    if (file_exists($probelang)) {
        include $probelang;
    }

    include dirname(__FILE__) . '/lang_en.inc.php';
}

$template_config = array(
    array(
        'var'           => 'colorset',
        'name'          => 'Color Set',
        'description'   => 'Enter the color set you want to use for this site',
        'type'          => 'select',
        'default'       => 'transred',
        'select_values' => array('transred' => 'Translucency red', 'transblue' => 'Translucency blue')
    ),
	array(
        'var'           => 'amount',
        'name'          => 'Number of navlinks',
        'description'   => 'Enter the number of navlinks you want to use in the navbar.',
        'type'          => 'string',
        'default'       => '4',
    ),

);

$template_config_groups = NULL;

if (version_compare($serendipity['version'],"1.1.beta3") >= 0) {
    $vars = serendipity_loadThemeOptions($template_config);
    $navlinks = array();

    for ($i = 0; $i < $vars['amount']; $i++) {
        $navlinks[] = array(
            'title' => $vars['navlink' . $i . 'text'],
            'href'  => $vars['navlink' . $i . 'url']
        );

        $template_config[] = array(
            'var'           => 'navlink' . $i . 'text',
            'name'          => NAV_LINK_TEXT . ' #' . $i,
            'description'   => NAV_LINK_DESC . ' #' .$i,
            'type'          => 'string',
            'default'       => constant('NAV_DEFAULT_' . $i),
	   );

        $template_config[] = array(
            'var'           => 'navlink' . $i . 'url',
            'name'          => NAV_LINK_URL . ' #' . $i,
            'description'   => NAV_LINK_URL_DESC . ' #' . $i,
            'type'          => 'string',
            'default'       => '#',
        );
    }

    $serendipity['smarty']->assign_by_ref('navlinks', $navlinks);
}
?>
