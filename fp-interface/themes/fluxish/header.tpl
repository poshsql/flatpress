<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>{$flatpress.title|tag:wp_title:'//'}</title>
	<meta http-equiv="Content-Type" content="text/html; charset={$flatpress.charset}" />
	{action hook=wp_head}
	{action hook=fluxish_head}
	{php} 
        $conf = $this->get_template_vars('fp_config');
        if(file_exists(THEMES_DIR.$conf[general][theme]."/lang/lang.".$conf['locale']['lang'].".php")){
            include(THEMES_DIR.$conf[general][theme]."/lang/lang.".$conf['locale']['lang'].".php");
        } else {
            include(THEMES_DIR.$conf[general][theme]."/lang/lang.en-us.php");
        } 
        $this->assign("theme_lang",$theme_lang);
        $this->assign("fp_config",$conf);
    {/php}
</head>

<body>
	<div id="body-container">
		<div id="head">
			<div id="header" class="container_16">
				<h1 class="title grid_12"><a href="{$smarty.const.BLOG_BASEURL}">{$flatpress.title}</a></h1>
				
				<!-- rss-button -->
				<a id="rss_button" class="rss-button" title="{$theme_lang.subscribeMyFeeds}"
				    onclick="javascript:showLayer('rss-menu')">
				    <div id="item-rss" class="rss-item floatRight"></div>
				</a>
				
				<!-- delicious-button -->
				<a id="delicious_button" class="delicious-button" title="{$theme_lang.addToDelicious}"
				    href="http://del.icio.us/post?v=4&noui&jump=close&url={$fp_config.general.www}&title={$flatpress.title}&notes={$flatpress.subtitle}">
				    <div id="item-delicious" class="rss-item floatRight"></div>
				</a>
				<h2 class="subtitle grid_12">{$flatpress.subtitle}</h2>
				<div id="rss-menu" style="display: none;">
                    <h2>{$theme_lang.subscribeMyFeeds}</h2>
                    <ul>

                        <li class="feed-xml">
                        <a href="{php}echo $conf[general][www]{/php}?x=feed:rss2">{$theme_lang.subscribeToRSSFeed}</a>
                        </li>

                        <li class="feed-yahoo">
                        <a href="http://add.my.yahoo.com/rss?url={php}echo $conf[general][www]{/php}?x=feed:rss2">{$theme_lang.addToMyYahoo}</a>
                        </li>

                        <li class="feed-newsgator">
                        <a href="http://www.newsgator.com/ngs/subscriber/subext.aspx?url={php}echo $conf[general][www]{/php}?x=feed:rss2">{$theme_lang.subscribeInNewsGator}</a>
                        </li>

                        <li class="feed-bloglines">
                        <a href="http://www.bloglines.com/sub/ {php}echo $conf[general][www]{/php}?x=feed:rss2">{$theme_lang.subscribeWithBloglines}</a>
                        </li>

                        <li class="feed-netvibes">
                        <a href="http://www.netvibes.com/subscribe.php?url={php}echo $conf[general][www]{/php}?x=feed:rss2">{$theme_lang.addToNetvibes}</a>
                        </li>

                        <li class="feed-google">
                        <a href="http://fusion.google.com/add?feedurl={php}echo $conf[general][www]{/php}?x=feed:rss2">{$theme_lang.addToGoogle}</a>
                        </li>

                    </ul>
                </div>
			</div>
			<div id="sub_header" class="container_16">
			    {php}
			        $page = 'top-menu';
			        if (static_exists($page)) {
			            $arr = static_parse($page);
			            $title = $arr['subject'];

			            if ($explicit_req)
				            add_filter('wp_title', 'index_gentitle', 1, 2);
				        
			            $this->assign('static_id', $page);
			            $this->assign('static_page',$arr);
			         
			    {/php}
			    {static}
					<div id="{$id}-nav" class="{$id}">
						{$content|tag:the_content}
					</div>
				{/static}
				{php}
		            }
		        {/php}
			</div>
			{php}
			    if(file_exists(ABS_PATH.ATTACHS_DIR.'header-'.$conf[general][style].'.jpg')){
           			echo '<script type="text/javascript">document
           			    .getElementById(\'sub_header\').style.backgroundImage = 
           			    "url(\''.BLOG_BASEURL.ATTACHS_DIR.'header-'.$conf[general][style].'.jpg\')"</script>';
    			} else if(file_exists(ABS_PATH.ATTACHS_DIR.'header-'.$conf[general][style].'.png')){
           			echo '<script type="text/javascript">document
           			    .getElementById(\'sub_header\').style.backgroundImage = 
           			    "url(\''.BLOG_BASEURL.ATTACHS_DIR.'header-'.$conf[general][style].'.png\')"</script>';
    			}
			{/php}
		</div>

