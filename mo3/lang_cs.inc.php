<?php

/**
 *  @author Vladimír Ajgl <vlada@ajgl.cz>
 *  @translated 2009/07/07
 */@define('MIMBO_INSTR','<b>Poznámka:</b> Šablona podporuje - pouze na výchozí stránce - jeden doprovodný obrázek ke každému pøíspìvku. Aby tato funkce správnì pracovala, musí být nainstalován plugin serendipity <i>Rozšíøené vlastnosti pøíspìvkù</i>. V nastavení tohoto pluginu musí být vytvoøeno pole MimboImage (pozor na velká písmena!) v nastavení <i>Vlastní pole</i>. Pøi psaní nového pøíspìvku pak mùže být pøíspìvku pøiøazen obrázek z knihovny médií pomocí volby <i>Rozšíøené možnosti</i>. Doporuèená šíøka tìchto obrázkù záleží na kategorii Mimbo category (viz níže), do které náleží pøíspìvek.<br /><br /><b>Kategorie Mimbo:</b> Šablona Mimbo zobrazuje pøíspìvky na výchozí stránce ve tøech oblastech. Použijte následující rozbalovací tlaèítka k pøiøazení serendipity kategorií k tìmto Mimbo kategoriím. Hlavní kategorie bude zobrazovat nejnovìjší pøíspìvky (doporuèená šíøka doprovodného obrázku: max 270 pixelù). Kategorie "features" zobrazuje odkazy na tøi její nejnovìjší pøíspìvky (doporuèená šíøka doprovodného obrázku: max 255 pixelù). A nakonec mùžete vybrat až tøi kategorie s novinkami. Každá z nich bude zobrazovat nejnovìjší pøíspìvky jako zkrácený lákací èlánek (doporuèená šíøka doprovodného obrázku: max 60 pixelù).<br /><br />');
@define('MIMBO_CAT_LEAD','Vyberte hlavní kategorii');
@define('MIMBO_CAT_FEAT','Vyberte kategorii "features"');
@define('MIMBO_CAT_X1','Vyberte první kategorii novinek');
@define('MIMBO_CAT_X2','Vyberte druhou kategorii novinek');
@define('MIMBO_CAT_X3','Vyberte tøetí kategorii novinek');
@define('MIMBO_CAT_X4','Vyberte ètvrtou kategorii novinek');
@define('NAVLINK_AMOUNT', 'Zadejte poèet odkazù v navigaèní lištì (po zadání tohoto èísla uložte a znovu naètìte stránku s nastavením stylu; odkaz na hlavní stránku blogu bude pøidán automaticky)');
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

@define('MIMBO_TAB_X1','Výbìr kategorie pro 1. záložku');
@define('MIMBO_TAB_X2','Výbìr kategorie pro 2. záložku');
@define('MIMBO_TAB_X3','Výbìr kategorie pro 3. záložku');
@define('MIMBO_TAB_X4','Výbìr kategorie pro 4. záložku');
@define('INFO_TAB','<b><p style="color:#FFFFFF; background-color: gray"> OKNO ZÁLOŽKY </p></b>');
@define('ENABLECAT_TABA','aktivovat okno záložky?');
@define('ENABLECAT_HMENUE','Aktivovat vodorovné menu?');
@define('ENABLECAT_LEAD','Aktivovat hlavní kategorii?');
@define('MAGAZINE_MODE','Aktivovat mód "èasopis"?');
@define('INFO_LEAD','<b><p style="color:#000000; background-color:yellow"> Hlavní OKNO </p></b>');
@define('INFO_NEWS','<b><p style="color:#ffffff; background-color:darkmagenta"> Novinky  </p></b>');
@define('INFO_FEAT','<b><p style="color:#ffffff; background-color:darkgreen"> OKNO Features </p></b>');
@define('INFO_TABKLOTZAMOUNT','<b><p style="color:#ffffff; background-color:orange"> Záložka Klotz OKNA (políèka pro zadání záložek naleznete zde po znovunaètení stránky)</p></b>');
@define('INFO_SBARMENUESAMOUNT','<b><p style="color:#ffffff; background-color:red"> Pøídavná menu (políèka pro zadání menu zde naleznete po znovunaètení stránky)(</p></b>');
@define('INFO_HMENUE','<b><p style="color:#ffffff; background-color:#0066FF"> Vodorovné menu (políèka pro zadání menu zde naleznete po znovunaètení stránky)</p></b>');
@define('TABKLOTZ_AMOUNT','Poèet oken pro záložky Klotz');
@define('CATBANNER_AMOUNT','Poèet bannerù kategorií ');
@define('KLOTZWIN_NAME','  jedineèné jméno ');
@define('ENABLE_TABX1',' Aktivovat kategorii 1. záložky? ');
@define('ENABLE_TABX2',' Aktivovat kategorii 2. záložky? ');
@define('ENABLE_TABX3',' Aktivovat kategorii 3. záložky? ');
@define('ENABLE_STICKY',' Aktivovat kategorii 4. záložky s pøilepenými pøíspìvky? ');
@define('SICKY_HEADER',' Nadpis 4. záložky (pøilepené pøíspìvky): ');
@define('INFO_CBA_AMOUNT','<b><p style="color:#ffffff; background-color:olive">   banner kategorie (políèka pro zadání kategorií zde naleznete po znovunaètení stránky)</p></b>');
@define('SB_POSITION',' Poloha: ');
@define('ENABLE_FOOTER',' Aktivovat patièku? ');
@define('MIMBO_CAT_ROL',' Vyberte kategorii pro rolovací menu: ');
@define('LEFTSIDEBAR_POS',' Poloha levého postranního sloupce: ');
@define('TABKLOTZ_POSITION',' Poloha záložky: ');
@define('TABKLOTZ_HEIGHT',' Nadpis záložky: ');
@define('TABTEXT',' Text záložky (html): ');
@define('TABKLOTZ_HEIGHT',' Nadpis záložky: ');
@define('CAT_IMAGE_TITLE',' Obrázek kategorie ');
@define('CATBANNER_POSITION',' Poloha obrázkù kategorií: ');
@define('IMAGE_TO_CAT',' Vyberte kategorii: ');
@define('INFO_ROL','<b><p style="color:#000000; background-color:#FFCCFF"> Rolovací okno menu </p></b>');
@define('ENABLECAT_ROL',' Aktivovat rolovací menu? ');
@define('CATROL_HEADER',' Nadpis rolovacího menu: ');
@define('ENABLE_TOPSIDEBAR',' Aktivovat okno se záložkami na vrchu postranního sloupce? ');