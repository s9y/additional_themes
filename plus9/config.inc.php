<?php
if (IN_serendipity !== true) {
  die ("Don't hack!");
}

$probelang = dirname(__FILE__) . '/' . $serendipity['charset'] . 'lang_' . $serendipity['lang'] . '.inc.php';

if (file_exists($probelang)) {
    include $probelang;
}

include dirname(__FILE__) . '/lang_en.inc.php';



$serendipity['smarty']->assign(array('currpage'=> "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']));



$istok= " <img src='" . serendipity_getTemplateFile('img/ok.gif'). "' alt='' /> ";
$notok= " <img src='" . serendipity_getTemplateFile('img/fehler.gif'). "' alt='' /> ";


$installation = 'Template Check:<br>';


if (class_exists('serendipity_event_freetag'))  {
   $inst_ok=$istok.' <span>OK:serendipity_event_freetag Plugin </span> <br>';
   } else {
   $inst_ok=$notok.' <span>MISSING: serendipity_event_freetag Plugin </span> <br>';
}
if (class_exists('serendipity_event_entryproperties'))  {
   $inst_ok=$inst_ok.$istok.' <span>OK:serendipity_event_entryproperties Plugin ';

   $check = serendipity_db_query("SELECT * FROM {$serendipity['dbPrefix']}config WHERE name LIKE '%serendipity_event_entryproperties:%/customfields' AND value LIKE '%MimboImage%'");
   if (is_array($check) && isset($check[0]['config'])) {
     $inst_ok=$inst_ok.  "Customfield Mimbo exists</span> <br>";
   } else {
    $inst_ok=$inst_ok.  "Nö!</span> <br>";
   }

   } else {
   $inst_ok=$inst_ok.$notok.' <span>MISSING: serendipity_event_entryproperties Plugin </span> <br>';
}

if (class_exists('serendipity_event_staticpage'))  {
   $inst_ok=$inst_ok.$istok.' <span>OK:serendipity_plugin_staticpage Plugin </span> <br>';
   } else {
   $inst_ok=$inst_ok.$notok.' <span>MISSING: serendipity_plugin_staticpage Plugin </span> <br>';
}








$template_config = array(
    array(
        'var'     => 'installation_ok',
        'type'    => 'content',
        'default' => "$inst_ok",
    ),

    array(
        'var'           => 'infoxxx1',
        'name'          => 'infoxxx1',
        'type'          => 'custom',
        'custom'        => J_INSTR,
    ),
    array(
        'var'           => 'enablekat',
        'name'          => ENABLE_KAT,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'enablearch',
        'name'          => ENABLE_ARCH,
        'type'          => 'boolean',
        'default'       => 'false',
    ),
    array(
        'var'           => 'enableastat',
        'name'          => ENABLE_STAT,
        'type'          => 'boolean',
        'default'       => 'false',
    ),
    array(
        'var'           => 'statheader',
        'name'          => STAT_HEADER,
        'type'          => 'string',
        'default'       => 'change me',
    ),
    array(
        'var'           => 'enableuser',
        'name'          => ENABLE_USER,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'enablelog',
        'name'          => ENABLE_LOG,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'wppddd',
        'name'          => WPP_DDD,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
        'var'           => 'addvtext',
        'name'          => ADDVTEXT,
        'type'          => 'text',
        'default'       => 'config google code in plugin',
    ),
    array(
      'var'           => 'enable_ad',
      'name'          => ENABLE_AD,
      'type'          => 'radio',
 	  'radio'         => array('value' => array('true', 'false'),				'desc'          => array('Yes', 'No')),
      'default'       => 'true',
    ),
     array(
        'var'           => 'show_pagitop',
        'name'          => SHOW_PAGITOP,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
	array(
        'var'           => 'show_pagibottom',
        'name'          => SHOW_PAGIBOTTOM,
        'type'          => 'boolean',
        'default'       => 'true',
    ),
    array(
      'var'           => 'my_addthis_account',
      'name'          => 'MY_ADDTHIS_ACCOUNT',
      'type'          => 'string',
      'default'       => 'Addthis.com Name',
    ),
    array(
        'var'           => 'amount',
        'name'          => NAVLINK_AMOUNT,
        'type'          => 'string',
        'default'       => '2',
    ),
    array(
	        'var'           => 'userdrop',
	        'name'          => USER_DROP,
	        'type'          => 'boolean',
	        'default'       => 'true',
      ),
    array(
        'var'           => 'dropd1',
        'name'          => DROP_D1,
        'type'          => 'string',
        'default'       => '5',
    ),
    array(
	        'var'           => 'dropheader',
	        'name'          => DROP_HEADER,
	        'type'          => 'string',
	        'default'       => 'Info',
    )
);

$template_loaded_config = serendipity_loadThemeOptions($template_config, $serendipity['smarty_vars']['template_option']);

if(isset($_POST['serendipity']['template']['amount']) && serendipity_userLoggedIn() && serendipity_checkPermission('adminTemplates')) {
  $temp_post=$_POST['serendipity']['template']['amount'];
  if(is_numeric($temp_post)) $template_loaded_config['amount'] =$temp_post;
}

$navlinks = array();

for ($i = 0; $i < $template_loaded_config['amount']; $i++) {
    $navlinks[] = array(
        'title' => $template_loaded_config['navlink' . $i . 'text'],
        'href'  => $template_loaded_config['navlink' . $i . 'url']
    );
    $template_config[] = array(
        'var'           => 'navlink' . $i . 'text',
        'name'          => NAV_LINK_TEXT . ' #' . $i,
        'type'          => 'string',
        'default'       => 'Link #' . $i,
        );
    $template_config[] = array(
        'var'           => 'navlink' . $i . 'url',
        'name'          => NAV_LINK_URL . ' #' . $i,
        'type'          => 'string',
        'default'       => '#',
    );
}


$droplinks = array();

for ($i = 0; $i < $template_loaded_config['dropd1']; $i++) {
    $droplinks[] = array(
        'title' => $template_loaded_config['droplink' . $i . 'text'],
        'href'  => $template_loaded_config['droplink' . $i . 'url']
    );
    $template_config[] = array(
        'var'           => 'droplink' . $i . 'text',
        'name'          => DRNAV_LINK_TEXT . ' #' . $i,
        'type'          => 'string',
        'default'       => 'DropDownLink #' . $i,
        );






    $template_config[] = array(
        'var'           => 'droplink' . $i . 'url',
        'name'          => DRNAV_LINK_URL . ' #' . $i,
        'type'          => 'string',
        'default'       => '#',
    );
}

$serendipity['smarty']->assign_by_ref('navlinks', $navlinks);
$serendipity['smarty']->assign_by_ref('droplinks', $droplinks);