<?php #

$probelang = dirname(__FILE__) . '/lang_' . $serendipity['lang'] . '.inc.php';

if (file_exists($probelang)) {
    include $probelang;
} else {
    include dirname(__FILE__) . '/lang_en.inc.php';
}

@define('DATE_FORMAT_CEEJAY01_TITLE', '%B %e. %Y');
@define('DATE_FORMAT_CEEJAY01_FOOTER', '%A, %B %e. %Y @ %H:%M');

$template_config = array(
    array(
        'var'           => 'about',
        'name'          => 'abouttext',
        'description'   => 'About me text, maximum 60 characters',
        'type'          => 'string',
        'default'       => 'Hi, Welcome to my site, please bookmark me, and feel free to comment on my posts',
    ),
    array(
        'var'           => 'aboutpageurl',
        'name'          => 'About page URL',
        'description'   => 'Enter the URL of your about page eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'copyrightname',
        'name'          => 'CopyrightName',
        'description'   => 'Name to appear in footer next to copyright symbol',
        'type'          => 'string',
        'default'       => 'Your Business Name',
    ),
    array(
        'var'           => 'impressum',
        'name'          => 'Impressum Text',
        'description'   => 'Footer link, could be used for Impressum or disclaimer',
        'type'          => 'string',
        'default'       => 'Impressum',
    ),
    array(
        'var'           => 'impressumurl',
        'name'          => 'Impressum URL',
        'description'   => 'Enter the footer link URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'amount',
        'name'          => 'Number of navlinks',
        'description'   => 'Enter the number of navlinks you want to use in the navbar.',
        'type'          => 'string',
        'default'       => '3',
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
