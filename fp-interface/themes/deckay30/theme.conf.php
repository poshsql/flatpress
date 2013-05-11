<?php
/*  
Theme Name: Deckay 3.0
Description: Fresh theme, in dark colors and green
Version: 0.705
Author: zeuder
Author URI: http://zeuder.com.ar/
*/


	$theme['name'] = ' Deckay 3.0';
	$theme['author'] = 'zeuder';
	$theme['www'] = 'http://zeuder.com.ar';
	$theme['description'] = 'Update Deckay Theme';
	
	
	$theme['version'] = 0.705;
	$theme['style_def'] = 'style.css';
	$theme['style_admin'] = 'admin.css';
	$theme['default_style'] = 'deckayblack';
	
	// Other theme settings
	
		// overrides default tabmenu
		// and panel layout
	remove_filter('admin_head', 'admin_head_action');
	
		// register widgetsets
	register_widgetset('right');
	register_widgetset('left'); 
	register_widgetset('menubar');
	
?>
