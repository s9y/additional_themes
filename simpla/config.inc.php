<?php

if (IN_serendipity !== true) {
  die ("Don't hack!");
}

include dirname(__FILE__) . '/lang_de.inc.php';

$template_config = array(

		array(
      	'var'           => 'PAGE_BREITE',
      	'name'          => 'Page breite (76em)',
      	'type'          => 'string',
      	'default'       => '76em',
  			),
		array(
      	'var'           => 'CONTENT_BREITE',
      	'name'          => 'Content breite (40em)',
      	'type'          => 'string',
      	'default'       => '40em',
  			),
		array(
	     	'var'           => 'SIDEBAR_BREITE',
	     	'name'          => 'Sidebar breite (20em)',
	     	'type'          => 'string',
	     	'default'       => '20em',
	  		),
		array(
		    'var'           => 'SIDEBAR_NAVIGATION_TITLE',
		    'name'          => 'Titel Sidebar Navigation (zum Ausschalten der Navigation leer lassen)',
		    'type'          => 'string',
		   	'default'       => 'Navigation',
		  	),
    array(
        'var'           => 'amount',
        'name'          => 'Navigation',
        'type'          => 'string',
        'default'       => '4',
    		),
);

$template_config_groups = NULL;

$template_loaded_config = serendipity_loadThemeOptions($template_config, $serendipity['smarty_vars']['template_option']);

$navlinks = array();

for ($i = 0; $i < $template_loaded_config['amount']; $i++) {
    $navlinks[] = array(
        'title' => $template_loaded_config['navlink' . $i . 'text'],
        'href'  => $template_loaded_config['navlink' . $i . 'url']
    );
    $template_config[] = array(
        'var'           => 'navlink' . $i . 'text',
        'name'          => 'Navigation Titel #' . $i,
        'type'          => 'string',
        'default'       => 'Titel #' . $i,
        );
    $template_config[] = array(
        'var'           => 'navlink' . $i . 'url',
        'name'          => 'Navigation Link #' . $i,
        'type'          => 'string',
        'default'       => 'Link #' . $i,
    );
}

$serendipity['smarty']->assign_by_ref('navlinks', $navlinks);

?>
