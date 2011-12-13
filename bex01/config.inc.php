<?php # $Id: config.inc.php,v 1.1 2006/05/13 09:06:58 garvinhicking Exp $

$probelang = dirname(__FILE__) . '/lang_' . $serendipity['lang'] . '.inc.php';
if (file_exists($probelang)) {
    include $probelang;
} else {
    include dirname(__FILE__) . '/lang_en.inc.php';
}
$template_config = array(
    array(
        'var'           => 'navlink1text',
        'title'         => 'Navlink #1 Text',
        'description'   => 'Enter the first navigation text',
        'type'          => 'string',
        'default'       => 'About',
    ),
    array(
        'var'           => 'navlink1url',
        'title'         => 'Navlink #1 URL',
        'description'   => 'Enter the first navigation URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'navlink2text',
        'title'         => 'Navlink #2 Text',
        'description'   => 'Enter the second navigation text',
        'type'          => 'string',
        'default'       => 'Photos',
    ),
    array(
        'var'           => 'navlink2url',
        'title'         => 'Navlink #2 URL',
        'description'   => 'Enter the second navigation URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'navlink3text',
        'title'         => 'Navlink #3 Text',
        'description'   => 'Enter the third navigation text',
        'type'          => 'string',
        'default'       => 'Projects',
    ),
    array(
        'var'           => 'navlink3url',
        'title'         => 'Navlink #3 URL',
        'description'   => 'Enter the third navigation URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
);
?>