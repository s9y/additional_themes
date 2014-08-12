<?php
if (IN_serendipity !== true) { die ("Don't hack!"); }

@serendipity_plugin_api::load_language(dirname(__FILE__). '/../2k11');
@serendipity_plugin_api::load_language(dirname(__FILE__));

$serendipity['smarty']->assign(array('currpage'  => "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'],
                                     'currpage2' => $_SERVER['REQUEST_URI']));

if (!function_exists('serendipity_smarty_html5time')) {
    function serendipity_smarty_html5time($timestamp) { return date("c", $timestamp); }

    $serendipity['smarty']->registerPlugin('modifier', 'serendipity_html5time', 'serendipity_smarty_html5time');
}

if (class_exists('serendipity_event_spamblock')) {
    $required_fieldlist = serendipity_db_query("SELECT value FROM {$serendipity['dbPrefix']}config WHERE name LIKE '%spamblock%required_fields'", true, 'assoc');
} elseif (class_exists('serendipity_event_commentspice')) {
    $required_fieldlist = serendipity_db_query("SELECT value FROM {$serendipity['dbPrefix']}config WHERE name LIKE '%commentspice%required_fields'", true, 'assoc');
}

if (is_array($required_fieldlist)) {
    $required_fields = explode(',', $required_fieldlist['value']);
    $smarty_required_fields = array();

    foreach($required_fields AS $required_field) {
        $required_field = trim($required_field);

        if (empty($required_field)) continue;
        $smarty_required_fields[$required_field] = $required_field;
    }

    $serendipity['smarty']->assign('required_fields', $smarty_required_fields);
}

$serendipity['smarty']->assign('is_templatechooser', $_SESSION['serendipityUseTemplate']);

$template_config = array(
    array(
        'var' => 'about',
        'name' => 'Template Readme',
        'type' => 'custom',
        'custom' => PHOTO_ABOUT
    ),
    array(
        'var'           => 'colorset',
        'name'          => THEME_COLORSET,
        'type'          => 'select',
        'default'       => 'dark',
        'select_values' => array('dark' => 'dark', 'bright' => 'bright')
    ),
    array(
        'var' => 'webfonts',
        'name' => TWOK11_WEBFONTS,
        'type' => 'select',
        'default' => 'droid',
        'select_values' => array('none' => TWOK11_NOWEBFONT,
                                'droid' => 'Droid Sans',
                                'ptsans' => 'PT Sans',
                                'osans' => 'Open Sans',
                                'lato' => 'Lato',
                                'cabin' => 'Cabin',
                                'ubuntu' => 'Ubuntu',
                                'dserif' => 'Droid Serif')
    ),
    array(
        'var' => 'headlines_webfonts',
        'name' => PHOTO_HEADLINE_WEBFONTS,
        'type' => 'select',
        'default' => 'aleo',
        'select_values' => array('none' => TWOK11_NOWEBFONT,
                                'aleo' => 'Aleo',
                                'philo' => 'Philosopher')
    ),
    array(
        'var' => 'quote_webfonts',
        'name' => PHOTO_QUOTE_WEBFONTS,
        'type' => 'boolean',
        'default' => false
    ),
    array(
        'var' => 'magnific',
        'name' => PHOTO_MAGNFIC_ENABLED,
        'type' => 'boolean',
        'default' => true
    ),
    array(
        'var' => 'lazyload',
        'name' => PHOTO_LAZYLOAD,
        'type' => 'boolean',
        'default' => true
    ),
    array(
        'var' => 'sticky_carousel',
        'name' => PHOTO_USE_CAROUSEL,
        'type' => 'boolean',
        'default' => true
    ),
    array(
        'var' => 'refcomments',
        'name' => TWOK11_REFCOMMENTS,
        'type' => 'boolean',
        'default' => false
    ),
    array(
        'var' => 'header_img',
        'name' => PHOTO_HEADER_IMG,
        'type' => 'media',
        'default' => serendipity_getTemplateFile('header.jpg')
    ),
    array(
        'var' => 'date_format',
        'name' => GENERAL_PLUGIN_DATEFORMAT . " (http://php.net/strftime)",
        'type' => 'select',
        'default' => DATE_FORMAT_ENTRY,
        'select_values' => array(DATE_FORMAT_ENTRY => DATE_FORMAT_ENTRY,
                                '%A, %e. %B %Y' => '%A, %e. %B %Y',
                                '%a, %e. %B %Y' => '%a, %e. %B %Y',
                                '%e. %B %Y' => '%e. %B %Y',
                                '%d.%m.%y' => '%d.%m.%y',
                                '%d.%m.%Y' => '%d.%m.%Y',
                                '%A, %m/%d/%Y' => '%A, %m/%d/%Y',
                                '%a, %m/%d/%y' => '%a, %m/%d/%y',
                                '%m/%d/%y' => '%m/%d/%y',
                                '%m/%d/%Y' => '%m/%d/%Y',
                                '%Y-%m-%d' => '%Y-%m-%d')
    ),
    array(
        'var' => 'userstyles',
        'name' => PHOTO_USERSTYLES,
        'type' => 'boolean',
        'default' => false
    ),
    array(
        'var' => 'use_corenav',
        'name' => TWOK11_USE_CORENAV,
        'type' => 'boolean',
        'default' => false
    )
);

$template_config['sidebars'] = array('hide,bottom');
$serendipity['sidebars'] = array('hide', 'bottom');
$template_config_groups = NULL;
$template_global_config = array('navigation' => true);
$template_loaded_config = serendipity_loadThemeOptions($template_config, $serendipity['smarty_vars']['template_option'], true);
serendipity_loadGlobalThemeOptions($template_config, $template_loaded_config, $template_global_config);

function serendipity_plugin_api_pre_event_hook($event, &$bag, &$eventData, &$addData) {
      //Check what Event is coming in, only react to those we want.
    switch($event) {
        case 'js':
            global $serendipity;
            $template_config = array();
            $template_loaded_config = serendipity_loadThemeOptions($template_config, $serendipity['smarty_vars']['template_option'], true);

            if (! isset($template_loaded_config['lazyload']) || $template_loaded_config['lazyload'] == true) {
                echo "(function( $ ) {
                $(document).ready(function() {
                    $('.lazy').show().lazyload( {
                        failure_limit: 10,
                        effect: 'fadeIn'
                    } );
                });
                })(jQuery);\n\n";
            }
    
            if (! isset($template_loaded_config['magnific']) || $template_loaded_config['magnific'] == true) {
                echo "(function( $ ) {
                $(document).ready(function() {
                    $('.serendipity_image_link').magnificPopup({
                                type:'image',
                                gallery: {
                                    enabled: true
                                }
                            });
                });
                })(jQuery);\n\n";
            }

            if (! isset($template_loaded_config['sticky_carousel']) || $template_loaded_config['sticky_carousel'] == true) {
                echo "(function( $ ) {
                $(document).ready(function() {
                    $('#bxslider').bxSlider();
                });
                })(jQuery);\n\n";
                
            }
            return true;
            break;
            
        case 'frontend_display':
            global $serendipity;
            $template_config = array();
            $template_loaded_config = serendipity_loadThemeOptions($template_config, $serendipity['smarty_vars']['template_option'], true);
            
            if (! isset($template_loaded_config['lazyload']) || $template_loaded_config['lazyload'] == true) {
                $text = $eventData['body'];
                $text = preg_replace('/<img([^>]*)/','<img\1 /><noscript><img\1 /></noscript',$text); # create noscript-fallback image
                $text = preg_replace('/(?<!<noscript>)<img([^>]*)src="([\S ]+?)"/','<img\1data-original="\2"',$text); # move src to data-original
                $text = preg_replace('/class="([\S ]+?)serendipity_image_left([\S ]+?)"/','class="\1serendipity_image_left lazy\2"',$text); # add lazy class to s9y-images
                $text = preg_replace('/class="([\S ]+?)serendipity_image_center([\S ]+?)"/','class="\1serendipity_image_center lazy\2"',$text);
                $text = preg_replace('/class="([\S ]+?)serendipity_image_right([\S ]+?)"/','class="\1serendipity_image_right lazy\2"',$text);
                $eventData['body'] = $text;
            }
            return true;
            break;
    }
}

if ($_SESSION['serendipityUseTemplate']) {
    $template_loaded_config['use_corenav'] = false;
}

