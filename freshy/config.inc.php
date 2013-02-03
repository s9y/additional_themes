<?php
//s9y1.1 stuff
//error_reporting(E_ALL);
// Probe for a language include with constants. Still include
// defines later on, if some constants were missing
if ($serendipity['GET']['adminModule'] == 'templates' || $serendipity['POST']['adminModule'] != 'templates') {
    // Probe for a language include with constants. Still include defines
    // later on, if some constants were missing
    $probelang = dirname(__FILE__) . '/' . $serendipity['charset'] . 'lang_' . $serendipity['lang'] . '.inc.php';
    if (file_exists($probelang)) {
        include $probelang;

    }


   	 include_once dirname(__FILE__) . '/UTF-8/lang_en.inc.php';
}

if (version_compare($serendipity["version"],"1.1.beta3") >=0)
{

include(dirname(__FILE__)."/functions.custom_imgsel.inc.php");


$imgsrc=array();
$headerdir=dirname(__FILE__)."/images/headers/";
$handle = @opendir($headerdir);
$header_img_dir="images/headers/";
if(!$handle)
{
	$imgsrc[serendipity_getTemplateFile($header_img_dir."Cards.jpg")]="Cards.jpg";
	$imgsrc[serendipity_getTemplateFile($header_img_dir."Birds.jpg")]="Birds.jpg";
}
else
{
	while (false !== ($imgfile = readdir($handle)))
	 {
        if ($imgfile != "." && $imgfile != "..")
        { $fullpath=serendipity_getTemplateFile($header_img_dir.$imgfile);
        		$imgsrc[$fullpath] =$imgfile;

    	}
	}

}



$freshy_header_text=array(
			"var"=>"freshyheader",
			"heading"=>FRESHY_HEADER_TITLE,
			"description"=>FRESHY_HEADER_DESCRIPTION


);

$freshy_header_option=array(
			"type"=>"select",
			"predef"=>array(),
			"custom"=>FRESHY_CUSTOM_HEADER
);

foreach($imgsrc as $path=>$filename)
{
	$temp_arr=array("val"=>$path,"description"=>$filename,"preview"=>true	);
	$freshy_header_option['predef'][]=$temp_arr;
}
$freshy_header_html=custom_output_script();
$freshy_header_html.=custom_imgsel($freshy_header_text,$freshy_header_option);

$template_config = array(
    array(
        'var'           => 'freshyheader_html',
        'type'         => "content",
          'default'       => $freshy_header_html
            ),

      array(
        "var"=>"sep1",
        "type"=>"seperator",
        "default"=>""
        ),
     array(
        'var'           => 'navbg',
        'name'         => FRESHY_NAVBG_TITLE,
        'description'   => FRESHY_NAVBG_DESCRIPTION,
        'type'          => 'select',
        'select_values' => array("green"=>FRESHY_NAVBG_GREEN,
        						 "blue"=>FRESHY_NAVBG_BLUE,
        						 "purple"=>FRESHY_NAVBG_PURPLE,
        						 "orange"=>FRESHY_NAVBG_ORANGE,
        						 "red"=>FRESHY_NAVBG_RED,
        						 "gray"=>FRESHY_NAVBG_GRAY,
        						 "lightblue"=>FRESHY_NAVBG_LIGHT_BLUE
        						),
        'default'       => "green"
            ),


             array("var"=>"homelinklabel",
	 	"name"=>FRESHY_NAVLINK_TITLE." 1",
		"description"=>	FRESHY_HOMELINK_DESCRIPTION,
		"type"=>"string",
		"default"=>"Home"
		)
    );




$template_config_groups = NULL;

$vars = serendipity_loadThemeOptions($template_config);

$navlinks = array();
$i=2;
for (; $i <= 10; $i++) {
    $navlinks[] = array(
        'title' => $vars['navlinklabel' . $i],
        'href'  => $vars['navlinkurl' . $i]
    );
    $template_config[] = array(
        'var'           => 'navlinklabel' . $i,
        'name'          => FRESHY_NAVLINK_TITLE . $i,
        'description'   => FRESHY_NAVLINK_ANCHOR_TEXT .$i,
        'type'          => 'string',
        'default'       => "",
   );
    $template_config[] = array("var"=>"navlinkurl".$i,
						"name"=>FRESHY_NAVLINK_TITLE.$i,
						"description"=>	FRESHY_NAVLINK_DESCRIPTION_URL.$i,
						"type"=>"string",
						"default"=>"#"
						);
}

  $template_config[] = array(
        'var'           => 'navlinklabellast',
        'name'          => FRESHY_NAVLINK_TITLE . $i,
        'description'   => FRESHY_NAVLINK_ANCHOR_TEXT .$i,
        'type'          => 'string',
        'default'       => "",
   );
    $template_config[] = array("var"=>"navlinkurllast",
						"name"=>FRESHY_NAVLINK_TITLE.$i,
						"description"=>	FRESHY_NAVLINK_DESCRIPTION_URL.$i,
						"type"=>"string",
						"default"=>"#"
						);

$serendipity['smarty']->assign_by_ref('navlinks', $navlinks);


$serendipity['smarty']->assign(array('currpage'=> "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']));
}

//end s9y1.1 stuff
?>
