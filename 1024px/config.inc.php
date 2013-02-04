<?php # $Id$

$probelang = dirname(__FILE__) . '/lang_' . $serendipity['lang'] . '.inc.php';
if (file_exists($probelang)) {
    include $probelang;
} else {
    include dirname(__FILE__) . '/lang_en.inc.php';
}
$template_config = array(
    array(
        'var'           => 'colorset',
        'description'   => 'Select colorset option',
        'type'          => 'select',
        'default'       => 'blue',
        'select_values' => array('default' => 'Blue', 'red' => 'Red')
    ),
    array(
        'var'           => 'contentposition',
        'title'         => 'Sidebar Position',
        'description'   => 'Sidebar left or right',
        'type'          => 'radio',
	  'radio'         => array('value' => array('true', 'false'),
					'desc' => array('Left', 'Right')),
        'default'       => 'true',
    ),
    array(
        'var'           => 'sitename',
        'title'         => 'Your Business Name',
        'description'   => 'Enter the year and business name',
        'type'          => 'string',
        'default'       => '2006 Your Business Name',
    ),
    array(
        'var'           => 'amount',
        'name'          => 'Number of navlinks',
        'description'   => 'Enter the number of navlinks you want to use in the navbar.',
        'type'          => 'string',
        'default'       => '3',
    ),
);

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

$template_config_groups = NULL;
?>
