<?php

/*
Author: Abdussamad Abdurrazzaq (http://abdussamad.com)
Date: 22 April 2007


An utterly complicated bunch of code that:
 - generates html
 - which is placed in the $templates array
 - which is used to display a form in admin config
 - which is used by the user to select a header image using the media manager
 - which is then recorded in the db
 - which is made available to templates
 - that use it to display an appropriate header image *

* may involve multiple steps like smarty processing etc.

function custom_imgsel()

Expects 2 arrays like this:

$text=array(
			"var"=>"var_name",
			"heading"=>"My cool heading",
			"description"=>"use this here to select your image"
			

);

$option=array(
			"type"=>"radio",
			"predef"=>array(array("val"=>"value",
									"description"=>"desc",
									"preview"=>true
								),
							array("val"=>"value",
									"description"=>"desc",
									"preview"=>false
								)
			
			
							),
			"custom"=>"description"
);

*/
function custom_imgsel($text,$option)
{
	//construct an array to use with serendipity_loadThemeOptions
	$saved_options=array();
	
	if (array_key_exists("predef",$option) && sizeof($option['predef'])) //predefined options exist
	{
		$saved_options[]=array("var"=>$text['var'],
							"default"=>$option['predef'][0]['val']
								);
	}
	
		$saved_options[]=array("var"=>"custom_".$text['var'],
							 "default"=>""
							 );
	$saved_vars=array();
	$saved_vars =serendipity_loadThemeOptions($saved_options);
	
//config.inc.php is included BEFORE theme options are saved so
//serendipity_loadThemeOptions returns stale data right after form
//submission.
	if(isset($_POST['serendipity']['template']) && serendipity_userLoggedIn() && serendipity_checkPermission('adminTemplates'))
	{
		
		$post_temp=$_POST['serendipity']['template'];
	
		if(array_key_exists($text['var'],$post_temp))
				$saved_vars[$text['var']]=$post_temp[$text['var']];
		if(array_key_exists("custom_".$text['var'],$post_temp))	
				$saved_vars["custom_".$text['var']]=$post_temp["custom_".$text['var']];	
	} 
	   
	
	

	
	$output_predef="";
	$output_custom="";
	$output_text="";
	
	$custom_text_box="serendipity[template][custom_{$text['var']}]";
	if (array_key_exists("predef",$option) && sizeof($option['predef'])) //predefined options exist
	{
		if($option['type']=="radio")
		{
			$num=0;
			foreach($option['predef'] as $opt_arr)
			{$num++;
					$output_predef.="<label><input type=\"radio\" id=\"{$text['var']}_$num\"";
					$output_predef.=" name=\"serendipity[template][{$text['var']}]\" value=\"{$opt_arr['val']}\"";
					$output_predef.=" onclick=\"disable_text_box(true,'$custom_text_box');\"";
					if($saved_vars[$text['var']]==$opt_arr['val'])
					{
						$output_predef.=" checked=\"checked\""	;
						
					}
					$output_predef.=" /> {$opt_arr['description']}</label>&nbsp;&nbsp;&nbsp;";
					if($opt_arr['preview'])
					{
						$output_predef.="<a href=\"#\" onclick=\"mybd_spawn_window('{$text['var']}_$num','{$opt_arr['description']}','{$text['heading']}');\" >".PREVIEW."</a>";	
					}
					$output_predef.="<br />";
			}
		}
		elseif($option['type']=="select")
		{
			$output_predef.="<select id=\"serendipity[template][{$text['var']}]\" name=\"serendipity[template][{$text['var']}]\"";
			$output_predef.="onclick=\"if(this.value!='custom'){disable_text_box(true,'$custom_text_box');}else {disable_text_box(false,'$custom_text_box')}\">";
			foreach($option['predef'] as $opt_arr)
			{
				$output_predef.="<option";
				if($saved_vars[$text['var']]==$opt_arr['val'])
				{
					$output_predef.=" selected=\"selected\"";
				}
				$output_predef.=" value=\"{$opt_arr['val']}\">{$opt_arr['description']}</option>";
				
			}
			
			
			
		}
	}
	
	if($option['type']=="radio")
	{
		$output_custom.="<label><input type=\"radio\" name=\"serendipity[template][{$text['var']}]\"";
		$output_custom.=" value=\"custom\"  onclick=\"disable_text_box(false,'$custom_text_box');\"";
		if($saved_vars[$text['var']]=="custom")
		{
			$output_custom.=" checked=\"checked\"";
				
		}
		$output_custom.=" />{$option['custom']}</label>&nbsp;&nbsp;&nbsp;";
		$output_custom.="<input type=\"text\" id=\"$custom_text_box\"";
		$output_custom.=" name=\"$custom_text_box\" value=\"".htmlentities($saved_vars["custom_".$text['var']])."\"";
		if($saved_vars[$text['var']]!="custom")
					$output_custom.=" disabled=\"true\"";
					
		$output_custom.=" />&nbsp;&nbsp;&nbsp; <a href=\"#\" onclick=\"mybd_spawn_window('$custom_text_box','{$option['custom']}','{$text['heading']}');\">".PREVIEW."</a>";
		$output_custom.="&nbsp;&nbsp;&nbsp; <a href=\"#\" onclick=\"mybd_spawn_media_manager('$custom_text_box');\">".MEDIA_LIBRARY."</a>";
		
		$output_text.="<h4>{$text['heading']}</h4><p>{$text['description']}</p>";
	
	}
	elseif($option['type']=="select")
	{
		if(!(array_key_exists("predef",$option) && sizeof($option['predef'])))
		{
			$output_custom.="<select id=\"serendipity[template][{$text['var']}]\" name=\"serendipity[template][{$text['var']}]\"";
			$output_custom.="onclick=\"if(this.value!='custom'){disable_text_box(true,'$custom_text_box');}else {disable_text_box(false,'$custom_text_box')}\">";
		}	
		$output_custom.="<option value=\"custom\"";
		if($saved_vars[$text['var']]=="custom")
		{
			$output_custom.="selected=\"selected\"";
				
		}
		$output_custom.=">{$option['custom']}</option>";
		$output_custom.="</select>&nbsp;";
		$output_custom.="<a href=\"#\" onclick=\"var n=document.getElementById('serendipity[template][{$text['var']}]');if(n.value=='custom'){mybd_spawn_window('$custom_text_box','{$option['custom']}','{$text['heading']}');} else { mybd_spawn_window(n.id,n.options[n.selectedIndex].text,'{$text['heading']}')};\" >".PREVIEW."</a>";;
		$output_custom.="<br /><br /><label>{$option['custom']}&nbsp;</label>";
		
		$output_custom.="<input type=\"text\" id=\"$custom_text_box\"";
		$output_custom.=" name=\"$custom_text_box\" value=\"".htmlentities($saved_vars["custom_".$text['var']])."\"";
		if($saved_vars[$text['var']]!="custom")
					$output_custom.=" disabled=\"true\"";
					
		$output_custom.=" />&nbsp;&nbsp;&nbsp; <a href=\"#\" onclick=\"mybd_spawn_window('$custom_text_box','{$option['custom']}','{$text['heading']}');\">".PREVIEW."</a>";
		$output_custom.="&nbsp;&nbsp;&nbsp; <a href=\"#\" onclick=\"mybd_spawn_media_manager('$custom_text_box');\">".MEDIA_LIBRARY."</a>";
		
		$output_text.="<h4>{$text['heading']}</h4>{$text['description']}&nbsp;";
	
	
	}
	return $output_text.$output_predef.$output_custom;

}//end custom_imgsel


function custom_output_script()
{
	global $serendipity;
	$script_path=serendipity_getTemplateFile("custom_imgsel.js");
$output_script=<<<EOS

<script type="text/javascript" language="JavaScript" src="serendipity_editor.js"></script>
<script type="text/javascript" language="JavaScript" src="$script_path"></script>
EOS;
return $output_script;	
}
?>