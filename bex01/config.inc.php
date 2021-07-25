<?php #

@serendipity_plugin_api::load_language(dirname(__FILE__));

$template_config = array(
    array(
        'var'           => 'navlink1text',
        'name'          => 'Navlink #1 Text',
        'description'   => 'Enter the first navigation text',
        'type'          => 'string',
        'default'       => 'About',
    ),
    array(
        'var'           => 'navlink1url',
        'name'          => 'Navlink #1 URL',
        'description'   => 'Enter the first navigation URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'navlink2text',
        'name'          => 'Navlink #2 Text',
        'description'   => 'Enter the second navigation text',
        'type'          => 'string',
        'default'       => 'Photos',
    ),
    array(
        'var'           => 'navlink2url',
        'name'          => 'Navlink #2 URL',
        'description'   => 'Enter the second navigation URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
    array(
        'var'           => 'navlink3text',
        'name'          => 'Navlink #3 Text',
        'description'   => 'Enter the third navigation text',
        'type'          => 'string',
        'default'       => 'Projects',
    ),
    array(
        'var'           => 'navlink3url',
        'name'          => 'Navlink #3 URL',
        'description'   => 'Enter the third navigation URL eg \'http://www.somesite.url\'',
        'type'          => 'string',
        'default'       => '#',
    ),
);

$template_config_groups = NULL;
?>
