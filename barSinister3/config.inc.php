<?php # $Id: config.inc.php,v 1.1 2006/06/27 19:01:21 garvinhicking Exp $

$probelang = dirname(__FILE__) . '/lang_' . $serendipity['lang'] . '.inc.php';
if (file_exists($probelang)) {
    include $probelang;
} else {
    include dirname(__FILE__) . '/lang_en.inc.php';
}
@define('DATE_FORMAT_BARSINISTER', '%b %d - %Y');
?>