<?php # $Id: config.inc.php,v 1.1 2006/04/18 00:29:52 carl_galloway Exp $

$probelang = dirname(__FILE__) . '/lang_' . $serendipity['lang'] . '.inc.php';
if (file_exists($probelang)) {
    include $probelang;
} else {
    include dirname(__FILE__) . '/lang_en.inc.php';
}

?>