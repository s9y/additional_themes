<?php
if (IN_serendipity !== true) {
  die ("Don't hack!");
}

$probelang = dirname(__FILE__) . '/' . $serendipity['charset'] . 'lang_' . $serendipity['lang'] . '.inc.php';

if (file_exists($probelang)) {
    include $probelang;
}

include dirname(__FILE__) . '/lang_en.inc.php';

$serendipity['smarty']->assign(array('currpage' => "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']));

$istok = " <img src='" . serendipity_getTemplateFile('img/ok.gif'). "' alt='' /> ";
$notok = " <img src='" . serendipity_getTemplateFile('img/fehler.gif'). "' alt='' /> ";

$sbmtarget      = array ("self Window","new Window", "new Window with nofollow");
$menuepsition   = array("side-bar-top","side-bar-bottom", "feature-bar-top",  "feature-bar-bottom","news-bar-top","news-bar-bottom","news-bar-middle","footer-l","footer-m","footer-r","footer-b","disable");
$installation   = 'Template Check:<br>';
$bannerposition = array( "top1",  "top2","bottom1","bottom2","disable");
$leftsidebarpos = array("footer-l","footer-m","footer-r","footer-b","disable");

if (class_exists('serendipity_event_freetag'))  {
    $inst_ok = $istok.' <span>OK:serendipity_event_freetag Plugin </span> <br>';
} else {
    $inst_ok = $notok.' <span>MISSING: serendipity_event_freetag Plugin </span> <br>';
}
if (class_exists('serendipity_event_entryproperties'))  {
    $inst_ok = $inst_ok.$istok.' <span>OK:serendipity_event_entryproperties Plugin ';

    $check = serendipity_db_query("SELECT * FROM {$serendipity['dbPrefix']}config WHERE name LIKE '%serendipity_event_entryproperties:%/customfields' AND value LIKE '%MimboImage%'");
    if (is_array($check) && isset($check[0]['config'])) {
        $inst_ok = $inst_ok.  "Customfield Mimbo exists</span> <br>";
    } else {
        $inst_ok = $inst_ok.  " Customfield?</span> <br>";
    }
} else {
    $inst_ok = $inst_ok.$notok.' <span>MISSING: serendipity_event_entryproperties Plugin </span> <br>';
}

if (class_exists('serendipity_event_staticpage'))  {
    $inst_ok = $inst_ok.$istok.' <span>OK:serendipity_plugin_staticpage Plugin </span> <br>';
} else {
    $inst_ok = $inst_ok.$notok.' <span>MISSING: serendipity_plugin_staticpage Plugin </span> <br>';
}

if ($serendipity['GET']['adminModule'] == 'templates' || $serendipity['POST']['adminModule'] == 'templates') {
    if (is_array($all_cats = serendipity_fetchCategories('all'))) {
        $categories = serendipity_walkRecursive($categories, 'categoryid', 'parentid', VIEWMODE_THREADED);
        $catsel = array();
        foreach($all_cats AS $cat) {
            $catsel[$cat['categoryid']] = str_repeat('&nbsp;', $cat['depth']) . $cat['category_name'];
        }
	}
}

$template_config = array(
    array(
        'var'          => 'sidebars',
        'name'         => SIDEBAR_TITLE,
        'type'         => 'string',
        'default'      => 'left,hide,right,top'
    ),
    array(
        'var'          => 'installation_ok',
        'type'         => 'content',
        'default'      => "$inst_ok",
    ),
    array(
       'var'           => 'infoxxx1',
       'name'          => 'infoxxx1',
       'type'          => 'custom',
       'custom'        => MIMBO_INSTR,
    ),
    array(
       'var'           => 'magazinemode',
       'name'          => MAGAZINE_MODE,
       'type'          => 'boolean',
       'default'       => 'true'
    ),
    array(
       'var'           => 'enablehmenue',
       'name'          => ENABLECAT_HMENUE,
       'type'          => 'boolean',
       'default'       => 'true'
    ),
    array(
       'var'           => 'enabletopsidebar',
       'name'          => ENABLE_TOPSIDEBAR,
       'type'          => 'boolean',
       'default'       => 'true'
    ),
    array(
       'var'           => 'enablefooter',
       'name'          => ENABLE_FOOTER,
       'type'          => 'boolean',
       'default'       => 'true'
    ),
    array(
       'var'           => 'sidebarpos',
       'name'          => LEFTSIDEBAR_POS,
       'type'          => 'select',
       'default'       => '',
       'select_values' => $leftsidebarpos,
    ),
    array(
       'var'           => 'infoxtab',
       'name'          => 'infoxtab',
       'type'          => 'custom',
       'custom'        => INFO_TAB,
    ),
    array(
       'var'           => 'enabletaba',
       'name'          => ENABLECAT_TABA,
       'type'          => 'boolean',
       'default'       => 'true'
    ),
     array(
       'var'           => 'tabx1',
       'name'          => MIMBO_TAB_X1,
       'type'          => 'select',
       'default'       => '',
       'select_values' => $catsel,
    ),
    array(
       'var'           => 'enabletabx1',
       'name'          => ENABLE_TABX1,
       'type'          => 'boolean',
       'default'       => 'true'
    ),
    array(
       'var'           => 'tabx2',
       'name'          => MIMBO_TAB_X2,
       'type'          => 'select',
       'default'       => '',
       'select_values' => $catsel,
    ),
    array(
       'var'           => 'enabletabx2',
       'name'          => ENABLE_TABX2,
       'type'          => 'boolean',
       'default'       => 'true'
    ),
    array(
       'var'           => 'tabx3',
       'name'          => MIMBO_TAB_X3,
       'type'          => 'select',
       'default'       => '',
       'select_values' => $catsel,
    ),
    array(
       'var'           => 'enabletabx3',
       'name'          => ENABLE_TABX3,
       'type'          => 'boolean',
       'default'       => 'true'
    ),
    array(
       'var'           => 'enablesticky',
       'name'          => ENABLE_STICKY,
       'type'          => 'boolean',
       'default'       => 'true'
    ),
    array(
       'var'           => 'stickyheader',
       'name'          => SICKY_HEADER,
       'type'          => 'string',
       'default'       => 'Sticky',
    ),
    array(
       'var'           => 'infoxlead',
       'name'          => 'infoxlead',
       'type'          => 'custom',
       'custom'        => INFO_LEAD,
    ),
    array(
       'var'           => 'enablecatlead',
       'name'          => ENABLECAT_LEAD,
       'type'          => 'boolean',
       'default'       => 'true'
    ),
    array(
       'var'           => 'catlead',
       'name'          => MIMBO_CAT_LEAD,
       'type'          => 'select',
       'default'       => '',
       'select_values' => $catsel,
    ),
    array(
       'var'           => 'infoxrol',
       'name'          => 'infoxrol',
       'type'          => 'custom',
       'custom'        => INFO_ROL,
    ),
    array(
       'var'           => 'enablecatrol',
       'name'          => ENABLECAT_ROL,
       'type'          => 'boolean',
       'default'       => 'false'
    ),
    array(
       'var'           => 'catrolheader',
       'name'          => CATROL_HEADER,
       'type'          => 'string',
       'default'       => 'NEWS: ',
    ),
    array(
       'var'           => 'catrol',
       'name'          => MIMBO_CAT_ROL,
       'type'          => 'select',
       'default'       => '',
       'select_values' => $catsel,
    ),
    array(
       'var'           => 'infoxfeat',
       'name'          => 'infoxfeat',
       'type'          => 'custom',
       'custom'        => INFO_FEAT,
    ),
    array(
       'var'           => 'catfeat',
       'name'          => MIMBO_CAT_FEAT,
       'type'          => 'select',
       'default'       => '',
       'select_values' => $catsel,
    ),
    array(
       'var'           => 'featamount',
       'name'          => FEAT_AMOUNT,
       'type'          => 'string',
       'default'       => '0',
    ),
    array(
       'var'           => 'infoxnews',
       'name'          => 'infoxnews',
       'type'          => 'custom',
       'custom'        => INFO_NEWS,
    ),
    array(
       'var'           => 'catx1',
       'name'          => MIMBO_CAT_X1,
       'type'          => 'select',
       'default'       => '',
       'select_values' => $catsel,
    ),
    array(
       'var'           => 'catx2',
       'name'          => MIMBO_CAT_X2,
       'type'          => 'select',
       'default'       => '',
       'select_values' => $catsel,
    ),
    array(
       'var'           => 'catx3',
       'name'          => MIMBO_CAT_X3,
       'type'          => 'select',
       'default'       => '',
       'select_values' => $catsel,
    ),
    array(
       'var'           => 'catx4',
       'name'          => MIMBO_CAT_X4,
       'type'          => 'select',
       'default'       => '',
       'select_values' => $catsel,
    ),
    array(
        'var'          => 'infohm',
        'name'         => 'infohm',
        'type'         => 'custom',
        'custom'       => INFO_HMENUE,
    ),
    array(
         'var'         => 'amount',
         'name'        => NAVLINK_AMOUNT,
         'type'        => 'string',
         'default'     => '0',
    ),
    array(
        'var'          => 'infotkm',
        'name'         => 'infotkm',
        'type'         => 'custom',
        'custom'       => INFO_TABKLOTZAMOUNT,
    ),
    array(
         'var'         => 'tabklotzamount',
         'name'        => TABKLOTZ_AMOUNT,
         'type'        => 'string',
         'default'     => '0',
    ),
    array(
        'var'          => 'infotcba',
        'name'         => 'infocba',
        'type'         => 'custom',
        'custom'       => INFO_CBA_AMOUNT,
    ),
    array(
        'var'          => 'catbanneramount',
        'name'         => CATBANNER_AMOUNT,
        'type'         => 'string',
        'default'      => '1',
    ),
    array(
        'var'          => 'infosbm',
        'name'         => 'infosbm',
        'type'         => 'custom',
        'custom'       => INFO_SBARMENUESAMOUNT,
    ),
    array(
        'var'          => 'sidebbarmenuesamount',
        'name'         => SBMENUES_AMOUNT,
         'type'        => 'string',
        'default'      => '0',
    )

);

$template_config_groups = NULL;

$template_loaded_config = serendipity_loadThemeOptions($template_config, $serendipity['smarty_vars']['template_option']);

$sbmenue1 = array();
for ($i = 0; $i < $template_loaded_config['sidebbarmenuesamount']; $i++) {
    $template_config[] = array(
        'var'           => 'menue1' . $i . 'sbmenue_info',
        'type'          => 'content',
        'default'       => '<b><p style="color:#FFFFFF; background-color: red">'. SBMENUE_TITLE . ' #' . $i .'</p></b>' ,
        );
    $template_config[] = array(
        'var'           => 'menue1' . $i . 'text',
        'name'          => SBHEADER_TEXT,
        'type'          => 'string',
        'default'       => 'Menue #' . $i,
        );
    $template_config[] = array(
        'var'           => 'menue1' . $i . 'url',
        'name'          => SBHEADER_URL,
        'type'          => 'string',
        'default'       => '#',
    );
    $template_config[] = array(
        'var'           => 'menue1' . $i . 'target',
        'name'          => SB_TARGET,
        'type'          => 'select',
        'select_values' => $sbmtarget,
    );
    $template_config[] = array(
        'var'           => 'menue1' . $i . 'sitenav1_amount',
        'name'          => SIDEBARMENUE_AMOUNT,
        'type'          => 'string',
        'default'       => '0',
        );
    $template_config[] = array(
        'var'           => 'menue1' . $i . 'position',
        'name'          => SB_POSITION,
        'type'          => 'select',
        'select_values' => $menuepsition,
    );
    $menuepoints = array();
    for ($s = 0; $s < $template_loaded_config['menue1' . $i . 'sitenav1_amount']; $s++) {
        $template_config[] = array(
        'var'           => 'menue1' . $i . 'menuepoint' . $s . 'text',
        'name'          => SIDEBARMENUE_TEXT . ' #'. $s,
        'type'          => 'string',
        'default'       => 'Menue #' . $s.' link #' . $i ,
            );
    $template_config[] = array(
        'var'           => 'menue1' . $i . 'menuepoint' . $s . 'url',
        'name'          => SIDEBARMENUE_URL . ' #'. $s,
        'type'          => 'string',
        'default'       => '#',
            );
    $template_config[] = array(
        'var'           => 'menue1' . $i . 'menuepoint' . $s . 'target',
        'name'          => SB_TARGET . ' #'. $s,
        'type'          => 'select',
        'select_values' => $sbmtarget,
            );
    $menuepoints[] = array(
        'title'         => $template_loaded_config['menue1' . $i . 'menuepoint' . $s . 'text'],
        'href'          => $template_loaded_config['menue1' . $i . 'menuepoint' . $s . 'url'],
        'target'        => $template_loaded_config['menue1' . $i . 'menuepoint' . $s . 'target'],
            );
    }
    $sbmenue1[] = array(
        'sbmenue_info'  => $template_loaded_config['menue1' . $i . 'sbmenue_info'],
        'title'         => $template_loaded_config['menue1' . $i . 'text'],
        'href'          => $template_loaded_config['menue1' . $i . 'url'],
        'target'        => $template_loaded_config['menue1' . $i . 'target'],
        'position'      => $template_loaded_config['menue1' . $i . 'position'],
        'menuepoints'   => $menuepoints,
    );
}
$serendipity['smarty']->assign_by_ref('sbmenue1', $sbmenue1);

$tabklotz1 = array();
for ($i = 0; $i < $template_loaded_config['tabklotzamount']; $i++) {
    $template_config[] = array(
        'var'           => 'tabk1' . $i . 'tabk_info',
        'type'          => 'content',
        'default'       => '<b><p style="color:#FFFFFF; background-color: orange">'. TABKLOTZ_TITLE . ' #' . $i .'</p></b>' ,
        );

    $template_config[] = array(
        'var'           => 'tabk1' . $i . 'tabklotzname',
        'name'          => KLOTZWIN_NAME,
        'type'          => 'string',
        'default'       => 'Klotz'.$i,
        );
    $template_config[] = array(
        'var'           => 'tabk1' . $i . 'tabk1_amount',
        'name'          => SIDEBARMENUE_AMOUNT,
        'type'          => 'string',
        'default'       => '0',
        );
    $template_config[] = array(
        'var'           => 'tabk1' . $i . 'position',
        'name'          => TABKLOTZ_POSITION,
        'type'          => 'select',
        'select_values' => $menuepsition,
        );
    $template_config[] = array(
        'var'           => 'tabk1' . $i . 'tabk1_height',
        'name'          => TABKLOTZ_HEIGHT,
        'type'          => 'string',
        'default'       => '100',
       );
    $tabs = array();
    for ($s = 0; $s < $template_loaded_config['tabk1' . $i . 'tabk1_amount']; $s++) {
        $template_config[] = array(
        'var'           => 'tabk1' . $i . 'tabpoint' . $s . 'text',
        'name'          => TABHEADER . ' #'. $s,
        'type'          => 'string',
        'default'       => 'Tab #' . $s ,
            );

    $template_config[] = array(
        'var'           => 'tabk1' . $i . 'tabpoint' . $s . 'tabtext',
        'name'          => TABTEXT . ' #'. $s,
        'type'          => 'text',
        'select_values' => '',
            );
    $tabs[] = array(
        'title'     => $template_loaded_config['tabk1' . $i . 'tabpoint' . $s . 'text'],
        'tabstext'    => $template_loaded_config['tabk1' . $i . 'tabpoint' . $s . 'tabtext'],

            );
    }
    $tabklotz1[] = array(
        'tabk_info'     => $template_loaded_config['tabk1' . $i . 'tabk_info'],
        'tabklotzname'     => $template_loaded_config['tabk1' . $i . 'tabklotzname'],
        'position'      => $template_loaded_config['tabk1' . $i . 'position'],
        'tabs'          => $tabs,
        'tabk1amount'  => $template_loaded_config['tabk1' . $i . 'tabk1_amount'],
        'tabwinheight'  => $template_loaded_config['tabk1' . $i . 'tabk1_height'],

    );
}
$serendipity['smarty']->assign_by_ref('tabklotz1', $tabklotz1);

$navlinks = array();
for ($i = 0; $i < $template_loaded_config['amount']; $i++) {
    $template_config[] = array(
        'var'           => 'navlink' . $i . 'navlink_info',
        'type'          => 'content',
        'default'       =>  '<b><p style="color:#FFFFFF; background-color: #0066FF">'. HORZ_NAV_LINK_TITLE . ' #' . $i .'</p></b>' ,
        );
    $template_config[] = array(
        'var'           => 'navlink' . $i . 'text',
        'name'          => NAV_LINK_TEXT,
        'type'          => 'string',
        'default'       => 'Link #' . $i,
        );
    $template_config[] = array(
        'var'           => 'navlink' . $i . 'url',
        'name'          => NAV_LINK_URL,
        'type'          => 'string',
        'default'       => '#',
    );
    $template_config[] = array(
        'var'           => 'navlink' . $i . 'dramount',
        'name'          => DROPDOWN_AMOUNT,
        'type'          => 'string',
        'default'       => '0',
        );
    $dropdownentries = array();
    for ($k = 0; $k < $template_loaded_config['navlink' . $i . 'dramount']; $k++) {
        $template_config[] = array(
            'var'       => 'navlink' . $i . 'dropdowentry' . $k . 'text',
            'name'      => DROPDOWN_TEXT . ' #'. $k,
            'type'      => 'string',
            'default'   => 'Link #' . $i . ' dropdowentry #' . $k,
            );
        $template_config[] = array(
            'var'       => 'navlink' . $i . 'dropdowentry' . $k . 'url',
            'name'      => DROPDOWN_URL . ' #'. $k,
            'type'      => 'string',
            'default'   => '#',
            );

        $dropdownentries[] = array(
            'title'     => $template_loaded_config['navlink' . $i . 'dropdowentry' . $k . 'text'],
            'href'      => $template_loaded_config['navlink' . $i . 'dropdowentry' . $k . 'url'],
            );
    }
    $navlinks[] = array(
        'navlinkinfo'     => $template_loaded_config['navlink' . $i . 'navlink_info'],
        'title'           => $template_loaded_config['navlink' . $i . 'text'],
        'href'            => $template_loaded_config['navlink' . $i . 'url'],
        'drop'            => $template_loaded_config['navlink' . $i . 'dramount'],
        'dropdownentries' => $dropdownentries,
    );
}
$serendipity['smarty']->assign_by_ref('navlinks', $navlinks);

$catlinks = array();

for ($i = 0; $i < $template_loaded_config['amount']; $i++) {

    $template_config[] = array(
        'var'           => 'catlink' . $i . 'catlink_info',
        'type'          => 'content',
        'default'       =>  '<b><p style="color:#FFFFFF; background-color: olive">'. CAT_IMAGE_TITLE . ' #' . $i .'</p></b>' ,
        );
    $template_config[] = array(
        'var'           => 'catlink' . $i . 'text',
        'name'          => NAV_LINK_TEXT . ' #' . $i,
        'type'          => 'text',
        'default'       => 'description #' . $i,
        );
    $template_config[] = array(
        'var'           => 'catlink' . $i . 'url',
        'name'          => NAV_LINK_URL . ' #' . $i,
        'type'          => 'media',
        'default'       => serendipity_getTemplateFile('header.png'),
        );
    $template_config[] = array(
        'var'           => 'catlink'. $i . 'catselect',
        'name'          => IMAGE_TO_CAT,
        'type'          => 'select',
        'default'       => 'nix',
        'select_values' => $catsel,
        );
    $template_config[] = array(
        'var'           => 'catlink' . $i . 'position',
        'name'          => CATBANNER_POSITION,
        'type'          => 'select',
        'select_values' => $bannerposition,
        );
   $catlinks[] = array(
        'title'      => $template_loaded_config['catlink' . $i . 'text'],
        'catlinkinfo'=> $template_loaded_config['navlink' . $i . 'catlink_info'],
        'bild'       => $template_loaded_config['catlink' . $i . 'url'],
        'catt'       => $template_loaded_config['catlink' . $i . 'catselect'],
        'position'   => $template_loaded_config['catlink' . $i . 'position'],

    );
}

$serendipity['smarty']->assign_by_ref('catlinks', $catlinks);

/* disabled, as possible doublette of LINE 50
 $all_cats = serendipity_fetchCategories('all');
 $categories = serendipity_walkRecursive($categories, 'categoryid', 'parentid', VIEWMODE_THREADED);
 $catsel = array();
 foreach($all_cats AS $cat) {
   $catsel[$cat['categoryid']] = str_repeat('&nbsp;', $cat['depth']) . $cat['category_name'];
 }*/
 
$serendipity['smarty']->assign('tabx1_cat', $catsel[$template_loaded_config['tabx1']]);
$serendipity['smarty']->assign('tabx2_cat', $catsel[$template_loaded_config['tabx2']]);
$serendipity['smarty']->assign('tabx3_cat', $catsel[$template_loaded_config['tabx3']]);
