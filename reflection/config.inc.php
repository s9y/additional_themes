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
        'default'       => 'yellow',
        'select_values' => array('default' => 'Yellow', 'aqua' => 'Aqua')
    ),
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
        'var'           => 'navlink1alt',
        'title'         => 'Navlink #1 Description',
        'description'   => 'Enter the first navigation description (20 characters)',
        'type'          => 'string',
        'default'       => 'All About Me',
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
        'var'           => 'navlink2alt',
        'title'         => 'Navlink #2 Description',
        'description'   => 'Enter the second navigation description (20 characters)',
        'type'          => 'string',
        'default'       => 'Piccies',
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
    array(
        'var'           => 'navlink3alt',
        'title'         => 'Navlink #3 Description',
        'description'   => 'Enter the third navigation description (20 characters)',
        'type'          => 'string',
        'default'       => 'What I Do',
    ),
    array(
        'var'           => 'navlink4text',
        'title'         => 'Navlink #4 Text',
        'description'   => 'Enter the fourth navigation text',
        'type'          => 'string',
        'default'       => 'Contact',
    ),
    array(
        'var'           => 'navlink4url',
        'title'         => 'Navlink #4 URL',
        'description'   => 'Enter the fourth navigation URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'navlink4alt',
        'title'         => 'Navlink #4 Description',
        'description'   => 'Enter the fourth navigation description (20 characters)',
        'type'          => 'string',
        'default'       => 'Send a msg',
    ),
);
?>