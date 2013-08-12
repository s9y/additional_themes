<?php # 

$probelang = dirname(__FILE__) . '/lang_' . $serendipity['lang'] . '.inc.php';
if (file_exists($probelang)) {
    include $probelang;
} else {
    include dirname(__FILE__) . '/lang_en.inc.php';
}
@define('DATE_FORMAT_BARSINISTER', '%b %d - %Y');

$template_config_groups = NULL;
?>
