<?php # lang_cz.inc.php 1.0 2009-06-05 18:45:49 VladaAjgl $

/**
 *  @version 1.0
 *  @author Vladimír Ajgl <vlada@ajgl.cz>
 *  @translated 2009/06/05
 */@define('J_INSTR','<strong>Pluginy, které je třeba nainstalovat</strong>: <br>aby navigační menu fungovalo správně, musí být nainstalované pluginy: <em><br><br>Archiv </em>(postranní blok skrytý) <br>- Zobrazovat počet příspěvků v kategoriích?&nbsp; Ne <br>- Skrýt odkaz na archiv, pokud neobsahuje žádné příspěvky:&nbsp; Ne<br><br><em>Kategorie </em>(skrytý postranní sloupec)<br>- XML-Tlačítka : žádná<br>- Umožnit návštěvníkům zobrazit více kateogirií najednou? Ne<br>- Povolit šablony Smarty? &nbsp; Ano<br /><br><em>Statické stránky&nbsp; </em>&nbsp;<br />Ikony nebo čistý text <b>: </b>Čistý text<br>Používat podadresář s obrázky v adresáři pluginu: <b>Ne<br><br></b>Pokud chcete použít <strong>statické stránky</strong> v navigační liště, musíte změnit řádku 252 v souboru&nbsp; <em><strong>/plugins/serendipity_event_staticpage/serendipity_plugin_staticpage.php&nbsp;&nbsp; </strong></em>z <br>starý kód: <strong><em>? sprintf(&nbsp; &quot;&lt;a href=\&quot;%s\&quot; title=\&quot;%s\&quot; style=\&quot;padding-left: %dpx;\&quot;&gt;%s&lt;/a&gt;&lt;br /&gt;\n&quot;, </em></strong><br><br>na <br>nový kód: <strong><em>? sprintf( &quot;&lt;li&gt; &lt;a href=\&quot;%s\&quot; &gt;%s&lt;/a&gt;&lt;/li&gt;\n&quot;,</em></strong><b><br><br><br>Poznámky:</b>Aby se v šabloně zobrazily správně tagy, musíte jít na nastavení pluginu Tagování příspěvků (klíčová slova) a nastavit volbu "Zobrazovat tagy v patičce" na <strong>Smarty</strong>.<br><b><br>');
@define('J_MENUTITLE', 'Nadpis menu v postranním sloupci');
@define('J_MENUTEXT', 'Stránky');
@define('J_SEARCHFIELD','Zadejte slovo k vyhledávání');
@define('J_SEARCHINFO','prohledat archivy');
@define('J_SUBMITTEXT','Hledej');
@define('J_SUBMITALT','Klikni pro prohledání archivů');
@define('J_WITH', 's');
@define('J_WITHOUT','bez');
@define('J_POSTED', 'Publikováno');
@define('J_COMMTS', 'Komentáře');
@define('J_TO', 'pro');
@define('NAVLINK_AMOUNT', 'Zadejte počet odkazů v navigační liště (pak je třeba znovu natáhnout stránku Správa stylů)');
@define('NAV_LINK_TEXT', 'Zadejte text rozbalovacího odkazu');
@define('NAV_LINK_URL', 'Zadejte plnou URL adresu rozbalovacího odkazu');
@define('WPP_DDD','Reklamy');
@define('ADDVTEXT','google kód');
@define('NAV_LINK_TEXT', 'Zadejte text rozbalovacího odkazu');
@define('NAV_LINK_URL', 'Zadejte plnou URL adresu rozbalovacího odkazu');
@define('DROP_D1', 'Zadejte počet odkazů pro Rozbalovací menu');
@define('USER_DROP', 'Povolit Rozbalovací menu');
@define('DROP_HEADER', 'Název rozbalovacího odkazu');
@define('ENABLE_KAT','Zobrazit kategorie v menu');
@define('ENABLE_ARCH','Zobrazit archivy v menu');
@define('ENABLE_STAT','Zobrazit statické stránky v menu');
@define('ENABLE_USER','Zobrazit rozbalovací menu (příspěvky a čísla stránek)');
@define('ENABLE_LOG','Zobrazit přihlášení v menu');
@define('DRNAV_LINK_TEXT', 'Text Rozbalovacího odkazu');
@define('DRNAV_LINK_URL', 'URL Rozbalovacího odkazu');
@define('STAT_HEADER','Nadpis rozbalovacího menu pro statické stránky');
@define('ENABLE_AD','Zobrazit tlačítko "addthis"?');
@define('MY_ADDTHIS_ACCOUNT','Váš addthis účet. Pokud ho nemáte, můžete si ho založit na http://www.addthis.com');
@define('SHOW_PAGITOP','Zobrazit doplňující čísla stránek v záhlaví obsahu');
@define('SHOW_PAGIBOTTOM','Zobrazit doplňující čísla stránek v patičce');