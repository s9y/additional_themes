<?php # 

$probelang = dirname(__FILE__) . '/' . $serendipity['charset'] . 'lang_' . $serendipity['lang'] . '.inc.php';
if (file_exists($probelang)) {
    include $probelang;
}
include dirname(__FILE__) . '/lang_en.inc.php';

$template_config = array(
    array(
        'var'           => 'navlink1text',
        'title'         => NAVLINK1_TEXT_TITLE,
        'description'   => NAVLINK1_TEXT_DESC,
        'type'          => 'string',
        'default'       => NAVLINK1_TEXT_DEFAULT,
    ),
    array(
        'var'           => 'navlink1url',
        'title'         => NAVLINK1_URL_TITLE,
        'description'   => NAVLINK1_URL_DESC,
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'navlink2text',
        'title'         => NAVLINK2_TEXT_TITLE,
        'description'   => NAVLINK2_TEXT_DESC,
        'type'          => 'string',
        'default'       => NAVLINK2_TEXT_DEFAULT,
    ),
    array(
        'var'           => 'navlink2url',
        'title'         => NAVLINK2_URL_TITLE,
        'description'   => NAVLINK2_URL_DESC,
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'navlink3text',
        'title'         => NAVLINK3_TEXT_TITLE,
        'description'   => NAVLINK3_TEXT_DESC,
        'type'          => 'string',
        'default'       => NAVLINK3_TEXT_DEFAULT,
    ),
    array(
        'var'           => 'navlink3url',
        'title'         => NAVLINK3_URL_TITLE,
        'description'   => NAVLINK3_URL_DESC,
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'navlink4text',
        'title'         => NAVLINK4_TEXT_TITLE,
        'description'   => NAVLINK4_TEXT_DESC,
        'type'          => 'string',
        'default'       => NAVLINK4_TEXT_DEFAULT,
    ),
    array(
        'var'           => 'navlink4url',
        'title'         => NAVLINK4_URL_TITLE,
        'description'   => NAVLINK4_URL_DESC,
        'type'          => 'string',
        'default'       => '#',
    ),
);

$template_config_groups = NULL;
?>
