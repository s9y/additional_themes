<?php # 

$probelang = dirname(__FILE__) . '/lang_' . $serendipity['lang'] . '.inc.php';
if (file_exists($probelang)) {
    include $probelang;
} else {
    include dirname(__FILE__) . '/lang_en.inc.php';
}
$template_config = array(
    array(
        'var'           => 'headerimage',
        'title'         => 'Header Image',
        'description'   => 'With actress, or without actress',
        'type'          => 'radio',
	  'radio'         => array('value' => array('true', 'false'),
					'desc' => array('With', 'Without')),
        'default'       => 'true',
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
