<?php # $Id: config.inc.php,v 1.2 2008/05/05 07:35:36 garvinhicking Exp $

if (IN_serendipity !== true) {
    die ("Don't hack!");
}
    
$probelang = dirname(__FILE__) . '/lang_' . $serendipity['lang'] . '.inc.php';
if (file_exists($probelang)) {
    include $probelang;
} else {
    include dirname(__FILE__) . '/lang_en.inc.php';
}

?>