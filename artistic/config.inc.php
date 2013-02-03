<?php # $Id$

$probelang = dirname(__FILE__) . '/lang_' . $serendipity['lang'] . '.inc.php';
if (file_exists($probelang)) {
    include $probelang;
} else {
    include dirname(__FILE__) . '/lang_en.inc.php';
}
$template_config = array(
    array(
        'var'           => 'abouttitle',
        'title'         => 'About Title Text',
        'description'   => 'Enter the about box header text',
        'type'          => 'string',
        'default'       => 'About Me',
    ),
    array(
        'var'           => 'about',
        'title'         => 'abouttext',
        'description'   => 'About me text',
        'type'          => 'string',
        'default'       => 'Hi, This box is about me, and is edited from within the theme configurator. The link could point to a static page.',
    ),
    array(
        'var'           => 'aboutpageurl',
        'title'         => 'About page URL',
        'description'   => 'Enter the URL of your about page eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
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
