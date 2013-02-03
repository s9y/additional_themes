<?php # $Id$

$probelang = dirname(__FILE__) . '/lang_' . $serendipity['lang'] . '.inc.php';
if (file_exists($probelang)) {
    include $probelang;
} else {
    include dirname(__FILE__) . '/lang_en.inc.php';
}

@define('HEMINGWAY_DATE_DDMMYYYY', '%d.%m.%Y');
@define('HEMINGWAY_DATE_MMDDYYYY', '%m.%d.%Y');

$template_config = array(
    array(
        'var'           => 'colorset',
        'name'          => HEMINGWAY_COLORSET,
        'description'   => HEMINGWAY_COLORSET_DESC,
        'type'          => 'select',
        'default'       => 'default',
        'select_values' => array('default' => 'Black and Grey', 'white' => 'White')
    ),
    array(
        'var'           => 'startpage_option',
        'name'          => HEMINGWAY_STARTPAGE,
        'description'   => HEMINGWAY_STARTPAGE_DESC,
        'type'          => 'radio',
	  'radio'         => array('value' => array('true', 'false'),
					'desc' => array(HEMINGWAY_STARTPAGE_RECENT, HEMINGWAY_STARTPAGE_TWOCOL)),
        'default'       => 'true',
    ),
    array(
        'var'           => 'date_format',
        'name'          => HEMINGWAY_DATE_FORMAT,
        'description'   => HEMINGWAY_DATE_FORMAT_DESC,
        'type'          => 'select',
        'default'       => 'ddmmyyyy',
        'select_values' => array('ddmmyyyy' => HEMINGWAY_DATE_FORMAT_DDMMYYYY, 'mm/dd/yyyy' => HEMINGWAY_DATE_FORMAT_MMDDYYYY)
    ),
    array(
        'var'           => 'about_title',
        'name'          => HEMINGWAY_ABOUT_TITLE,
        'description'   => HEMINGWAY_ABOUT_TITLE_DESC,
        'type'          => 'string',
        'default'       => HEMINGWAY_ABOUT_TITLE_DEFAULT,
    ),
    array(
        'var'           => 'about',
        'name'          => HEMINGWAY_ABOUT_TEXT,
        'description'   => HEMINGWAY_ABOUT_TEXT_DESC,
        'type'          => 'string',
        'default'       => HEMINGWAY_ABOUT_TEXT_DEFAULT,
    ),
    array(
        'var'           => 'aboutpageurl',
        'name'          => HEMINGWAY_ABOUT_URLTITLE,
        'description'   => HEMINGWAY_ABOUT_URL_DESC,
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
         'var'          => 'sidebars',
         'name'         => HEMINGWAY_SIDEBAR_TITLE,
         'description'  => HEMINGWAY_SIDEBAR_DESC,
         'type'         => 'string',
         'default'      => 'left,hide,right,middle,detail,'
    ),
 );

$template_config_groups = NULL;
?>
