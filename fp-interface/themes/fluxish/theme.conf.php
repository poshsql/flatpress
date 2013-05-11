<?php
/*  
Theme Name: f!uXish
Theme URI: http://sliversofmysoul.altervista.org
Description: Slivers of Web 2.0 style on your Flatpress.
Version: 1.0
Author: f!uX
Author URI: http://sliversofmysoul.altervista.org
*/

	$theme['name'] = 'f!uXish';
	$theme['author'] = 'f!uX';
	$theme['www'] = 'http://sliversofmysoul.altervista.org';
	$theme['description'] = 'Slivers of Web 2.0 style on your Flatpress.';
	
	$theme['version'] = 1.0;
		
	$theme['style_def'] = 'style.css';
	$theme['style_admin'] = 'admin.css';
	
	$theme['default_style'] = 'acid';

	// Other theme settings
	
	// overrides default tabmenu
	// and panel layout
	remove_filter('admin_head', 'admin_head_action');
	add_action ('fluxish_head', 'theme_fluxish_head');
	
    // register widgetsets
	register_widgetset('right');
	register_widgetset('left'); 
	
	function theme_fluxish_head(){
	    
	    global $fpconfig;
	    global $blog_config;
	    
	    echo "<script type=\"text/javascript\">";
	    
	    /* add scroll effects to links (with mootools) */
	    echo "window.addEvent('domready', function(){ new SmoothScroll(); });";
	    
	    /* add function to show a div layer */
	    echo '
	        function showLayer(layer){
                var myLayer = document.getElementById(layer).style.display;
                if(myLayer == "none"){
                    document.getElementById(layer).style.display="block";
                } else {
                    document.getElementById(layer).style.display="none";
                }
            }
        ';
	    
	    /* add tooltips effects (with mootools) */
	    /*
	    echo "window.addEvent('domready', function(){ 
	        new Tips($$('a', 'img', 'acronim' ), {
		        maxTitleChars: 50,
		        initialize:function(){
		            this.fx = new Fx.Style(this.toolTip, 'opacity', 
		                {duration: 500, wait: false}).set(0);
	            },
	            onShow: function(toolTip) {
		            this.fx.start(1);
	            },
	            onHide: function(toolTip) {
		            this.fx.start(0);
	            }
	        })});";
	    */
	    
        /*echo "window.addEvent('domready', function(){";
        echo "var mySlide = new Fx.Slide('sidebar_wrap'); 
                $('toggle_sidebar').addEvent('click', function(e){
                    e = new Event(e);
                    mySlide.toggle();
                    e.stop();
                });
            });";*/
    
        /* add function to hide sidebars */
        /*echo "window.addEvent('domready', function(){";
        echo "$('header').addEvent('click', function(e){
                if($('sidebar_wrap').getStyle('display') == 'block'){;
                    $('sidebar_wrap').setStyle('display','none');
                    $('sidebar_wrap').setStyle('margin-left','0px');
                    $('main').setStyle('width','840px');
                } else {
                    $('sidebar_wrap').setStyle('display','block');
                    $('sidebar_wrap').setStyle('margin-left','500px');
                    $('main').setStyle('width','480px');
                }
            });";
        echo "});";*/
        echo "</script>";
	    
	}

?>
