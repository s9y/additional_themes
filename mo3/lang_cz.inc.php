<?php # lang_cz.inc.php 1.0 2009-07-07 11:58:26 VladaAjgl $

/**
 *  @version 1.0
 *  @author Vladimír Ajgl <vlada@ajgl.cz>
 *  @translated 2009/07/07
 */@define('MIMBO_INSTR','<b>Poznámka:</b> ©ablona podporuje - pouze na výchozí stránce - jeden doprovodný obrázek ke ka¾dému pøíspìvku. Aby tato funkce správnì pracovala, musí být nainstalován plugin serendipity <i>Roz¹íøené vlastnosti pøíspìvkù</i>. V nastavení tohoto pluginu musí být vytvoøeno pole MimboImage (pozor na velká písmena!) v nastavení <i>Vlastní pole</i>. Pøi psaní nového pøíspìvku pak mù¾e být pøíspìvku pøiøazen obrázek z knihovny médií pomocí volby <i>Roz¹íøené mo¾nosti</i>. Doporuèená ¹íøka tìchto obrázkù zále¾í na kategorii Mimbo category (viz ní¾e), do které nále¾í pøíspìvek.<br /><br /><b>Kategorie Mimbo:</b> ©ablona Mimbo zobrazuje pøíspìvky na výchozí stránce ve tøech oblastech. Pou¾ijte následující rozbalovací tlaèítka k pøiøazení serendipity kategorií k tìmto Mimbo kategoriím. Hlavní kategorie bude zobrazovat nejnovìj¹í pøíspìvky (doporuèená ¹íøka doprovodného obrázku: max 270 pixelù). Kategorie "features" zobrazuje odkazy na tøi její nejnovìj¹í pøíspìvky (doporuèená ¹íøka doprovodného obrázku: max 255 pixelù). A nakonec mù¾ete vybrat a¾ tøi kategorie s novinkami. Ka¾dá z nich bude zobrazovat nejnovìj¹í pøíspìvky jako zkrácený lákací èlánek (doporuèená ¹íøka doprovodného obrázku: max 60 pixelù).<br /><br />');
@define('MIMBO_CAT_LEAD','Vyberte hlavní kategorii');
@define('MIMBO_CAT_FEAT','Vyberte kategorii "features"');
@define('MIMBO_CAT_X1','Vyberte první kategorii novinek');
@define('MIMBO_CAT_X2','Vyberte druhou kategorii novinek');
@define('MIMBO_CAT_X3','Vyberte tøetí kategorii novinek');
@define('MIMBO_CAT_X4','Vyberte ètvrtou kategorii novinek');
@define('NAVLINK_AMOUNT', 'Zadejte poèet odkazù v navigaèní li¹tì (po zadání tohoto èísla ulo¾te a znovu naètìte stránku s nastavením stylu; odkaz na hlavní stránku blogu bude pøidán automaticky)');
@define('NAV_LINK_TEXT', 'Zadejte text navigaèního odkazu');
@define('NAV_LINK_URL', 'Zadejte plnou URL adresu navigaèního odkazu');

@define('HORZ_NAV_LINK_TITLE', 'Vodorovný navigaèní øádek');
@define('DROPDOWN_AMOUNT', 'Poèet rozbalovacích odkazù menu (Kliknìte na odkaz "Správa stylù" pro znovunaètení a zobrazení zmìn)');
@define('DROPDOWN_TEXT', '   Text rozbalovacího odkazu menu');
@define('DROPDOWN_URL', '   URL adresa rozbalovacího odkazu menu');
@define('SBMENUES_AMOUNT', 'Poèet blokù menu v postranním sloupci (Kliknìte na odkaz "Správa stylù" pro znovunaètení a zobrazení zmìn)');
@define('SBHEADER_TEXT', 'záhlaví menu');
@define('SBHEADER_URL', 'URL adresa záhlaví menu');
@define('SIDEBARMENUE_AMOUNT', 'Poèet odkazù menu (Kliknìte na odkaz "Správa stylù" pro znovunaètení a zobrazení zmìn)');
@define('SIDEBARMENUE_TEXT', 'Text odkazu menu');
@define('SIDEBARMENUE_URL', 'URL adresa odkazu menu');
@define('SBMENUE_TITLE', 'Menu ');
@define('SB_TARGET', 'Jak otevírat odkaz?');

@define('MIMBO_TAB_X1','Výbìr kategorie pro 1. zálo¾ku');
@define('MIMBO_TAB_X2','Výbìr kategorie pro 2. zálo¾ku');
@define('MIMBO_TAB_X3','Výbìr kategorie pro 3. zálo¾ku');
@define('MIMBO_TAB_X4','Výbìr kategorie pro 4. zálo¾ku');
@define('INFO_TAB','<b><p style="color:#FFFFFF; background-color: gray"> OKNO ZÁLO®KY </p></b>');
@define('ENABLECAT_TABA','aktivovat okno zálo¾ky?');
@define('ENABLECAT_HMENUE','Aktivovat vodorovné menu?');
@define('ENABLECAT_LEAD','Aktivovat hlavní kategorii?');
@define('MAGAZINE_MODE','Aktivovat mód "èasopis"?');
@define('INFO_LEAD','<b><p style="color:#000000; background-color:yellow"> Hlavní OKNO </p></b>');
@define('INFO_NEWS','<b><p style="color:#ffffff; background-color:darkmagenta"> Novinky  </p></b>');
@define('INFO_FEAT','<b><p style="color:#ffffff; background-color:darkgreen"> OKNO Features </p></b>');
@define('INFO_TABKLOTZAMOUNT','<b><p style="color:#ffffff; background-color:orange"> Zálo¾ka Klotz OKNA (políèka pro zadání zálo¾ek naleznete zde po znovunaètení stránky)</p></b>');
@define('INFO_SBARMENUESAMOUNT','<b><p style="color:#ffffff; background-color:red"> Pøídavná menu (políèka pro zadání menu zde naleznete po znovunaètení stránky)(</p></b>');
@define('INFO_HMENUE','<b><p style="color:#ffffff; background-color:#0066FF"> Vodorovné menu (políèka pro zadání menu zde naleznete po znovunaètení stránky)</p></b>');
@define('TABKLOTZ_AMOUNT','Poèet oken pro zálo¾ky Klotz');
@define('CATBANNER_AMOUNT','Poèet bannerù kategorií ');
@define('KLOTZWIN_NAME','  jedineèné jméno ');
@define('ENABLE_TABX1',' Aktivovat kategorii 1. zálo¾ky? ');
@define('ENABLE_TABX2',' Aktivovat kategorii 2. zálo¾ky? ');
@define('ENABLE_TABX3',' Aktivovat kategorii 3. zálo¾ky? ');
@define('ENABLE_STICKY',' Aktivovat kategorii 4. zálo¾ky s pøilepenými pøíspìvky? ');
@define('SICKY_HEADER',' Nadpis 4. zálo¾ky (pøilepené pøíspìvky): ');
@define('INFO_CBA_AMOUNT','<b><p style="color:#ffffff; background-color:olive">   banner kategorie (políèka pro zadání kategorií zde naleznete po znovunaètení stránky)</p></b>');
@define('SB_POSITION',' Poloha: ');
@define('ENABLE_FOOTER',' Aktivovat patièku? ');
@define('MIMBO_CAT_ROL',' Vyberte kategorii pro rolovací menu: ');
@define('LEFTSIDEBAR_POS',' Poloha levého postranního sloupce: ');
@define('TABKLOTZ_POSITION',' Poloha zálo¾ky: ');
@define('TABKLOTZ_HEIGHT',' Nadpis zálo¾ky: ');
@define('TABTEXT',' Text zálo¾ky (html): ');
@define('TABKLOTZ_HEIGHT',' Nadpis zálo¾ky: ');
@define('CAT_IMAGE_TITLE',' Obrázek kategorie ');
@define('CATBANNER_POSITION',' Poloha obrázkù kategorií: ');
@define('IMAGE_TO_CAT',' Vyberte kategorii: ');
@define('INFO_ROL','<b><p style="color:#000000; background-color:#FFCCFF"> Rolovací okno menu </p></b>');
@define('ENABLECAT_ROL',' Aktivovat rolovací menu? ');
@define('CATROL_HEADER',' Nadpis rolovacího menu: ');
@define('ENABLE_TOPSIDEBAR',' Aktivovat okno se zálo¾kami na vrchu postranního sloupce? ');