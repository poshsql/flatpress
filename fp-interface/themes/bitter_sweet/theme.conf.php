<?php

	$theme['name'] = 'bitter-sweet';
	$theme['author'] = 'Arcsin, ported by Tychondriax';
	$theme['www'] = 'http://templates.arcsin.se/';
	
	$theme['version'] = 1.0;
		
	$theme['style_def'] = 'style.css';
	$theme['style_admin'] = 'admin.css';
	
	// Other theme settings
	
		// overrides default tabmenu
		// and panel layout
/*	remove_filter('admin_head', 'admin_head_action');  */

		// adds a javascript (expand/collapse)
/*	function theme_flatmaas2_head() {
		
		global $blog_config;
		
		echo "<!-- Theme Head -->\n";
		echo '<script src="' . THEMES_DIR . 
			$blog_config['THEME'] .
			'/res/toggleMenu.js" type="text/javascript"></script>';
		echo "\n<!-- EndOf Theme Head -->\n";
	}
	
	add_action('wp_head', 'theme_flatmaas2_head'); */

?>
