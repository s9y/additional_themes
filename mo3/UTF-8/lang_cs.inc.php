<?php # lang_cs.inc.php 1.0 2009-07-07 11:58:26 VladaAjgl $

/**
 *  @version 1.0
 *  @author Vladimír Ajgl <vlada@ajgl.cz>
 *  @translated 2009/07/07
 */@define('MIMBO_INSTR','<b>Poznámka:</b> Šablona podporuje - pouze na výchozí stránce - jeden doprovodný obrázek ke každému příspěvku. Aby tato funkce správně pracovala, musí být nainstalován plugin serendipity <i>Rozšířené vlastnosti příspěvků</i>. V nastavení tohoto pluginu musí být vytvořeno pole MimboImage (pozor na velká písmena!) v nastavení <i>Vlastní pole</i>. Při psaní nového příspěvku pak může být příspěvku přiřazen obrázek z knihovny médií pomocí volby <i>Rozšířené možnosti</i>. Doporučená šířka těchto obrázků záleží na kategorii Mimbo category (viz níže), do které náleží příspěvek.<br /><br /><b>Kategorie Mimbo:</b> Šablona Mimbo zobrazuje příspěvky na výchozí stránce ve třech oblastech. Použijte následující rozbalovací tlačítka k přiřazení serendipity kategorií k těmto Mimbo kategoriím. Hlavní kategorie bude zobrazovat nejnovější příspěvky (doporučená šířka doprovodného obrázku: max 270 pixelů). Kategorie "features" zobrazuje odkazy na tři její nejnovější příspěvky (doporučená šířka doprovodného obrázku: max 255 pixelů). A nakonec můžete vybrat až tři kategorie s novinkami. Každá z nich bude zobrazovat nejnovější příspěvky jako zkrácený lákací článek (doporučená šířka doprovodného obrázku: max 60 pixelů).<br /><br />');
@define('MIMBO_CAT_LEAD','Vyberte hlavní kategorii');
@define('MIMBO_CAT_FEAT','Vyberte kategorii "features"');
@define('MIMBO_CAT_X1','Vyberte první kategorii novinek');
@define('MIMBO_CAT_X2','Vyberte druhou kategorii novinek');
@define('MIMBO_CAT_X3','Vyberte třetí kategorii novinek');
@define('MIMBO_CAT_X4','Vyberte čtvrtou kategorii novinek');
@define('NAVLINK_AMOUNT', 'Zadejte počet odkazů v navigační liště (po zadání tohoto čísla uložte a znovu načtěte stránku s nastavením stylu; odkaz na hlavní stránku blogu bude přidán automaticky)');
@define('NAV_LINK_TEXT', 'Zadejte text navigačního odkazu');
@define('NAV_LINK_URL', 'Zadejte plnou URL adresu navigačního odkazu');

@define('HORZ_NAV_LINK_TITLE', 'Vodorovný navigační řádek');
@define('DROPDOWN_AMOUNT', 'Počet rozbalovacích odkazů menu (Klikněte na odkaz "Správa stylů" pro znovunačtení a zobrazení změn)');
@define('DROPDOWN_TEXT', '   Text rozbalovacího odkazu menu');
@define('DROPDOWN_URL', '   URL adresa rozbalovacího odkazu menu');
@define('SBMENUES_AMOUNT', 'Počet bloků menu v postranním sloupci (Klikněte na odkaz "Správa stylů" pro znovunačtení a zobrazení změn)');
@define('SBHEADER_TEXT', 'záhlaví menu');
@define('SBHEADER_URL', 'URL adresa záhlaví menu');
@define('SIDEBARMENUE_AMOUNT', 'Počet odkazů menu (Klikněte na odkaz "Správa stylů" pro znovunačtení a zobrazení změn)');
@define('SIDEBARMENUE_TEXT', 'Text odkazu menu');
@define('SIDEBARMENUE_URL', 'URL adresa odkazu menu');
@define('SBMENUE_TITLE', 'Menu ');
@define('SB_TARGET', 'Jak otevírat odkaz?');

@define('MIMBO_TAB_X1','Výběr kategorie pro 1. záložku');
@define('MIMBO_TAB_X2','Výběr kategorie pro 2. záložku');
@define('MIMBO_TAB_X3','Výběr kategorie pro 3. záložku');
@define('MIMBO_TAB_X4','Výběr kategorie pro 4. záložku');
@define('INFO_TAB','<b><p style="color:#FFFFFF; background-color: gray"> OKNO ZÁLOŽKY </p></b>');
@define('ENABLECAT_TABA','aktivovat okno záložky?');
@define('ENABLECAT_HMENUE','Aktivovat vodorovné menu?');
@define('ENABLECAT_LEAD','Aktivovat hlavní kategorii?');
@define('MAGAZINE_MODE','Aktivovat mód "časopis"?');
@define('INFO_LEAD','<b><p style="color:#000000; background-color:yellow"> Hlavní OKNO </p></b>');
@define('INFO_NEWS','<b><p style="color:#ffffff; background-color:darkmagenta"> Novinky  </p></b>');
@define('INFO_FEAT','<b><p style="color:#ffffff; background-color:darkgreen"> OKNO Features </p></b>');
@define('INFO_TABKLOTZAMOUNT','<b><p style="color:#ffffff; background-color:orange"> Záložka Klotz OKNA (políčka pro zadání záložek naleznete zde po znovunačtení stránky)</p></b>');
@define('INFO_SBARMENUESAMOUNT','<b><p style="color:#ffffff; background-color:red"> Přídavná menu (políčka pro zadání menu zde naleznete po znovunačtení stránky)(</p></b>');
@define('INFO_HMENUE','<b><p style="color:#ffffff; background-color:#0066FF"> Vodorovné menu (políčka pro zadání menu zde naleznete po znovunačtení stránky)</p></b>');
@define('TABKLOTZ_AMOUNT','Počet oken pro záložky Klotz');
@define('CATBANNER_AMOUNT','Počet bannerů kategorií ');
@define('KLOTZWIN_NAME','  jedinečné jméno ');
@define('ENABLE_TABX1',' Aktivovat kategorii 1. záložky? ');
@define('ENABLE_TABX2',' Aktivovat kategorii 2. záložky? ');
@define('ENABLE_TABX3',' Aktivovat kategorii 3. záložky? ');
@define('ENABLE_STICKY',' Aktivovat kategorii 4. záložky s přilepenými příspěvky? ');
@define('SICKY_HEADER',' Nadpis 4. záložky (přilepené příspěvky): ');
@define('INFO_CBA_AMOUNT','<b><p style="color:#ffffff; background-color:olive">   banner kategorie (políčka pro zadání kategorií zde naleznete po znovunačtení stránky)</p></b>');
@define('SB_POSITION',' Poloha: ');
@define('ENABLE_FOOTER',' Aktivovat patičku? ');
@define('MIMBO_CAT_ROL',' Vyberte kategorii pro rolovací menu: ');
@define('LEFTSIDEBAR_POS',' Poloha levého postranního sloupce: ');
@define('TABKLOTZ_POSITION',' Poloha záložky: ');
@define('TABKLOTZ_HEIGHT',' Nadpis záložky: ');
@define('TABTEXT',' Text záložky (html): ');
@define('TABKLOTZ_HEIGHT',' Nadpis záložky: ');
@define('CAT_IMAGE_TITLE',' Obrázek kategorie ');
@define('CATBANNER_POSITION',' Poloha obrázků kategorií: ');
@define('IMAGE_TO_CAT',' Vyberte kategorii: ');
@define('INFO_ROL','<b><p style="color:#000000; background-color:#FFCCFF"> Rolovací okno menu </p></b>');
@define('ENABLECAT_ROL',' Aktivovat rolovací menu? ');
@define('CATROL_HEADER',' Nadpis rolovacího menu: ');
@define('ENABLE_TOPSIDEBAR',' Aktivovat okno se záložkami na vrchu postranního sloupce? ');