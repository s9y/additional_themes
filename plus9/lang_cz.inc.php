/<?php

/**
 *  @author Vladimír Ajgl <vlada@ajgl.cz>
 *  @translated 2009/06/05
 */@define('J_INSTR','<strong>Pluginy, které je tøeba nainstalovat</strong>: <br>aby navigaèní menu fungovalo správnì, musí být nainstalované pluginy: <em><br><br>Archiv </em>(postranní blok skrytý) <br>- Zobrazovat poèet pøíspìvkù v kategoriích?&nbsp; Ne <br>- Skrýt odkaz na archiv, pokud neobsahuje ¾ádné pøíspìvky:&nbsp; Ne<br><br><em>Kategorie </em>(skrytý postranní sloupec)<br>- XML-Tlaèítka : ¾ádná<br>- Umo¾nit náv¹tìvníkùm zobrazit více kateogirií najednou? Ne<br>- Povolit ¹ablony Smarty? &nbsp; Ano<br /><br><em>Statické stránky&nbsp; </em>&nbsp;<br />Ikony nebo èistý text <b>: </b>Èistý text<br>Pou¾ívat podadresáø s obrázky v adresáøi pluginu: <b>Ne<br><br></b>Pokud chcete pou¾ít <strong>statické stránky</strong> v navigaèní li¹tì, musíte zmìnit øádku 252 v souboru&nbsp; <em><strong>/plugins/serendipity_event_staticpage/serendipity_plugin_staticpage.php&nbsp;&nbsp; </strong></em>z <br>starý kód: <strong><em>? sprintf(&nbsp; &quot;&lt;a href=\&quot;%s\&quot; title=\&quot;%s\&quot; style=\&quot;padding-left: %dpx;\&quot;&gt;%s&lt;/a&gt;&lt;br /&gt;\n&quot;, </em></strong><br><br>na <br>nový kód: <strong><em>? sprintf( &quot;&lt;li&gt; &lt;a href=\&quot;%s\&quot; &gt;%s&lt;/a&gt;&lt;/li&gt;\n&quot;,</em></strong><b><br><br><br>Poznámky:</b>Aby se v ¹ablonì zobrazily správnì tagy, musíte jít na nastavení pluginu Tagování pøíspìvkù (klíèová slova) a nastavit volbu "Zobrazovat tagy v patièce" na <strong>Smarty</strong>.<br><b><br>');
@define('J_MENUTITLE', 'Nadpis menu v postranním sloupci');
@define('J_MENUTEXT', 'Stránky');
@define('J_SEARCHFIELD','Zadejte slovo k vyhledávání');
@define('J_SEARCHINFO','prohledat archivy');
@define('J_SUBMITTEXT','Hledej');
@define('J_SUBMITALT','Klikni pro prohledání archivù');
@define('J_WITH', 's');
@define('J_WITHOUT','bez');
@define('J_POSTED', 'Publikováno');
@define('J_COMMTS', 'Komentáøe');
@define('J_TO', 'pro');
@define('NAVLINK_AMOUNT', 'Zadejte poèet odkazù v navigaèní li¹tì (pak je tøeba znovu natáhnout stránku Správa stylù)');
@define('NAV_LINK_TEXT', 'Zadejte text rozbalovacího odkazu');
@define('NAV_LINK_URL', 'Zadejte plnou URL adresu rozbalovacího odkazu');
@define('WPP_DDD','Reklamy');
@define('ADDVTEXT','google kód');
@define('NAV_LINK_TEXT', 'Zadejte text rozbalovacího odkazu');
@define('NAV_LINK_URL', 'Zadejte plnou URL adresu rozbalovacího odkazu');
@define('DROP_D1', 'Zadejte poèet odkazù pro Rozbalovací menu');
@define('USER_DROP', 'Povolit Rozbalovací menu');
@define('DROP_HEADER', 'Název rozbalovacího odkazu');
@define('ENABLE_KAT','Zobrazit kategorie v menu');
@define('ENABLE_ARCH','Zobrazit archivy v menu');
@define('ENABLE_STAT','Zobrazit statické stránky v menu');
@define('ENABLE_USER','Zobrazit rozbalovací menu (pøíspìvky a èísla stránek)');
@define('ENABLE_LOG','Zobrazit pøihlá¹ení v menu');
@define('DRNAV_LINK_TEXT', 'Text Rozbalovacího odkazu');
@define('DRNAV_LINK_URL', 'URL Rozbalovacího odkazu');
@define('STAT_HEADER','Nadpis rozbalovacího menu pro statické stránky');
@define('ENABLE_AD','Zobrazit tlaèítko "addthis"?');
@define('MY_ADDTHIS_ACCOUNT','Vá¹ addthis úèet. Pokud ho nemáte, mù¾ete si ho zalo¾it na http://www.addthis.com');
@define('SHOW_PAGITOP','Zobrazit doplòující èísla stránek v záhlaví obsahu');
@define('SHOW_PAGIBOTTOM','Zobrazit doplòující èísla stránek v patièce');