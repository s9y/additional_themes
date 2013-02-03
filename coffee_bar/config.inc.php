<?php # $Id$


$template_config = array(
 array(
        'var'           => 'colorset',
        'title'         => 'Color Set',
        'description'   => 'Enter the color set you want to use for this site',
        'type'          => 'select',
        'default'       => 'blue',
        'select_values' => array('blue' => 'Coffee_cup', 'cappuccino' => 'Cappuccino', 'espresso' => 'Espresso')
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
        'default'       => 'Dave&#39;s themes',
    ),
    array(
        'var'           => 'navlink3url',
        'title'         => 'Navlink #3 URL',
        'description'   => 'Enter the third navigation URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => 'http://themes.daves.me.uk',
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
);

$template_config_groups = NULL;
?>
