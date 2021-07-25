<?php # 

@serendipity_plugin_api::load_language(dirname(__FILE__));

$serendipity['smarty']->assign('CONST', get_defined_constants());

$template_config_groups = NULL;
?>
