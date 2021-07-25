<?php
// Be nice to the frontend users. They don't need the additional constants
// and file lookups. Only load them when in Admin mode.
if ($serendipity['GET']['adminModule'] == 'templates' || $serendipity['POST']['adminModule'] != 'templates') {
    @serendipity_plugin_api::load_language(dirname(__FILE__));
}

$serendipity['smarty']->assign(array('currpage'=> "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']));

$template_config = array(
    array(
        'var'           => 'abouttitle',
        'name'          => 'abouttitle',
		'name'          => ABOUT_TITLE,
        'description'   => ABOUT_TITLE_DESC,
        'type'          => 'string',
        'default'       => 'About',
    ),
    array(
        'var'           => 'about',
        'name'          => 'about_text',
		'name'          => ABOUT_TEXT,
        'description'   => ABOUT_TEXT_DESC,
        'type'          => 'string',
        'default'       => ABOUT_TEXT_DEFAULT,
    ),
    array(
        'var'           => 'about_text_toggle',
        'description'   => USE_ABOUT_TEXT_DESC,
        'type'          => 'radio',
        'radio'         => array('value' => array('true', 'false'),
                                 'desc'  => array(AT_POS, AT_NEG)),
        'default'       => 'false'
    ),
    array(
        'var'           => 'aboutpageurl',
        'name'          => 'About page URL',
        'description'   => ABOUT_URL,
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'amount',
        'name'          => NAVNUM,
        'description'   => NAVNUMDESC,
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
    $serendipity['smarty']->assign_by_ref('subnavlinks', $subnavlinks);
}
?>
