<?php

@serendipity_plugin_api::load_language(dirname(__FILE__));

# Template options:
$template_config = array(

    # Let the user choose a colorset:
    array(
        'var'           => 'colorset',
        'name'          => RESY_COLORSET,
        'type'          => 'select',
        'default'       => 'default',
        'select_values' => array(
            # Colorsets:
            'serendipity' => RESY_COLORSET_SERENDIPITY,
            'lime_and_melon_salad' => RESY_COLORSET_LIME_AND_MELON_SALAD,
            'default' => RESY_COLORSET_DEFAULT)
    ),

    # The position of the sidebar can be either left or right:
    array(
        'var'           => 'sidebar_position',
        'name'          => RESY_SIDEBAR_POSITION,
        'type'          => 'select',
        'default'       => 'right',
        'select_values' => array(
            'left' => RESY_LEFT,
            'right' => RESY_RIGHT)
    ),

    array(
        'var'           => 'sidebars',
        'type'          => 'hidden',
        'default'       => 'left,hide,right'
    ),

    # Options which are allowed in the Verekia-template but need refining:
    array(
        'var'           => 'navigation',
        'type'          => 'hidden',
        'default'       => 'false'
    ),

    array(
        'var'           => 'footer',
        'type'          => 'hidden',
        'default'       => 'false'
    )

);

$template_config_groups = NULL;
# vim: tabstop=4 shiftwidth=4 expandtab
