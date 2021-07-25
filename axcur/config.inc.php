<?php
if (IN_serendipity !== true) {
  die ("Don't hack!");
}

@serendipity_plugin_api::load_language(dirname(__FILE__));

$serendipity['smarty']->assign(array('currpage'=> "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']));

$xxsbmtarget      = array ("self Window","new Window", "new Window with nofollow");
$xxmenuepsition   = array("side-bar-top","side-bar-bottom", "feature-bar-top",  "feature-bar-bottom","news-bar-top","news-bar-bottom","news-bar-middle","footer-l","footer-m","footer-r","footer-b","disable");
$xxinstallation   = 'Template Check:<br>';
$xxbannerposition = array( "top1",  "top2","bottom1","bottom2","disable");
$xxleftsidebarpos = array("footer-l","footer-m","footer-r","footer-b","disable");

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
        'var'             => 'sidebars',
        'name'             => 'SIDEBAR_TITLE',
        'type'             => 'string',
        'default'        => 'left,hide,right,top'
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
       'var'           => 'enablehmenue',
       'name'          => ENABLECAT_HMENUE,
       'type'          => 'boolean',
       'default'       => 'true'
    ),
    array(
       'var'           => 'infohm',
       'name'          => 'infohm',
       'type'          => 'custom',
       'custom'        => INFO_HMENUE,
    ),
    array(
        'var'         => 'amount',
        'name'        => NAVLINK_AMOUNT,
        'type'        => 'string',
        'default'     => '5',
    ),
    array(
       'var'           => 'infosbm',
       'name'          => 'infosbm',
       'type'          => 'custom',
       'custom'        => INFO_SBARMENUESAMOUNT,
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
        'title'     => $template_loaded_config['menue1' . $i . 'menuepoint' . $s . 'text'],
        'href'      => $template_loaded_config['menue1' . $i . 'menuepoint' . $s . 'url'],
        'target'    => $template_loaded_config['menue1' . $i . 'menuepoint' . $s . 'target'],
            );
    }
    $sbmenue1[] = array(
        'sbmenue_info' => $template_loaded_config['menue1' . $i . 'sbmenue_info'],
        'title'         => $template_loaded_config['menue1' . $i . 'text'],
        'href'          => $template_loaded_config['menue1' . $i . 'url'],
        'target'        => $template_loaded_config['menue1' . $i . 'target'],
        'position'      => $template_loaded_config['menue1' . $i . 'position'],
        'menuepoints'      => $menuepoints,
    );
}

$serendipity['smarty']->assign_by_ref('sbmenue1', $sbmenue1);

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
            'var'           => 'navlink' . $i . 'dropdowentry' . $k . 'text',
            'name'          => DROPDOWN_TEXT . ' #'. $k,
            'type'          => 'string',
            'default'       => 'Link #' . $i . ' dropdowentry #' . $k,
            );
        $template_config[] = array(
            'var'           => 'navlink' . $i . 'dropdowentry' . $k . 'url',
            'name'          => DROPDOWN_URL . ' #'. $k,
            'type'          => 'string',
            'default'       => '#',
            );

        $dropdownentries[] = array(
            'title'         => $template_loaded_config['navlink' . $i . 'dropdowentry' . $k . 'text'],
            'href'          => $template_loaded_config['navlink' . $i . 'dropdowentry' . $k . 'url'],
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

/* disables, as it seems to be doublette of fixed Line 23ff
$all_cats   = serendipity_fetchCategories('all');
$categories = serendipity_walkRecursive($categories, 'categoryid', 'parentid', VIEWMODE_THREADED);
$catsel = array();
foreach($all_cats AS $cat) {
    $catsel[$cat['categoryid']] = str_repeat('&nbsp;', $cat['depth']) . $cat['category_name'];
}
*/
