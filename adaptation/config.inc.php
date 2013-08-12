<?php # 

if (IN_serendipity !== true) {
    die ("Don't hack!");
}

$probelang = dirname(__FILE__) . '/lang_' . $serendipity['lang'] . '.inc.php';
if (file_exists($probelang)) {
    include $probelang;
} else {
    include dirname(__FILE__) . '/lang_en.inc.php';
}

$template_config = array(
    array(
        'var'           => 'style',
        'title'         => 'Style',
        'description'   => 'Style',
        'type'          => 'select',
        'default'       => 'aqua',
        'select_values' => array('aqua' => 'Aqua style', 'oldskool' => 'Old school')
    ),
    array(
        'var'           => 'fonts',
        'title'         => 'Fonts',
        'description'   => 'Font:',
        'type'          => 'select',
        'default'       => 'arial',
        'select_values' => array('times' => 'Times New Roman, Times, serif', 'bitstream_vera_sans' => 'Bitstream Vera Sans, Verdana, sans serif', 'bitstream_vera_serif' => 'Bitstream Vera Serif, Georgia, serif', 'georgia' => 'Georgia, Bitstream Vera Serif, serif', 'trebuchet' => 'Trebuchet MS, Verdana, sans serif', 'courier' => 'Courier New, Courier, Fixed', 'verdana' => 'Verdana, Bitstream Vera Sans, Sans Serif', 'arial' => 'Arial, Sans Serif', 'tahoma' => 'Tahoma, Verdana, Bitstream Vera Sans, Sans Serif', 'helvetica' => 'Helvetica, Verdana, Bitstream Vera Sans, Sans Serif')
    ),
    array(
        'var'     => 'sidebars',
        'title'   => 'Sidebars',
        'type'    => 'string',
        'default' => 'left,hide,right'
    )
);

$template_config_groups = NULL;
?>
