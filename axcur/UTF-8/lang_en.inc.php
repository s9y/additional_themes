<?php
@define('MIMBO_INSTR','<b>Note:</b> The template supports - only on the start page - a single accompanying image per entry. For this feature to actually work, the s9y event plugin <i>Extended properties for entries</i> has to be installed. In the configuration of this plugin, a field called MimboImage (mind the captalization!) has to be set up under <i>Custom Fields</i>. When posting a new entry to the blog, an image from the media database can now be assigned to it under <i>Advanced Options</i>. The recommended width for these images depends on the Mimbo category (see below) the entry is assigned to.<br /><br /><b>Mimbo categories:</b> The Mimbo template displays entries in three areas on the start page. Use the following dropdown boxes to assign s9y categories to these Mimbo categories. The lead category will display its most recent entry (recommended width for the accompanying image: 270 pixels max). The features category will display links to its latest three entries (recommenden width for the accompanying image: 255 pixels max). Finally, select three news categories. Each of them will display its most recent entry as a shortened teaser (recommended width for the accompanying image: 60 pixels max).<br /><br />');
@define('ENABLECAT_HMENUE','Activate the horizontal menue?');
@define('INFO_HMENUE','<b><p style="color:#ffffff; background-color:#0066FF"> Horizontal-Menue (you will find menue entries belower after reload)</p></b>');
@define('NAV_LINK_TEXT', 'Enter the navbar link text');
@define('NAV_LINK_URL', 'Enter the full URL of your link');
@define('HORZ_NAV_LINK_TITLE', 'Horiz. Navigation Link');
@define('DROPDOWN_AMOUNT', 'Number of dropdown menue links (Use the link "Manage Styles" to reload and to see the changes)');
@define('DROPDOWN_TEXT', '  Text dropdown menue link ');
@define('DROPDOWN_URL', '  URL dropdown menue linkt ');
@define('INFO_SBARMENUESAMOUNT','<b><p style="color:#ffffff; background-color:red"> Additional menues (you will find menue entries belower after reload)(</p></b>');
@define('NAVLINK_AMOUNT', 'Enter number of links in the navbar (needs reload of the Manage Styles page; link to the index page of the blog will be added automatically)');
@define('INFO_FOOTER','<b><p style="color:#ffffff; background-color:red"> FOOTER Configuation</p></b>');
@define('BACKGROUNDC', ' Enter background color (hex) Example:#f1f6fb');