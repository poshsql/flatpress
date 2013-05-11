	<div id="{$id}" class="entry {$date|date_format:"y-%Y m-%m d-%d"}">
				{* 	using the following way to print the date, if more 	*} 
				{*	than one entry have been written the same day,		*} 
				{*	 the date will be printed only once 				*}
	    
		{php} 
            $conf = $this->get_template_vars('fp_config');
            if(file_exists(THEMES_DIR.$conf[general][theme]."/lang/lang.".$conf['locale']['lang'].".php")){
                include(THEMES_DIR.$conf[general][theme]."/lang/lang.".$conf['locale']['lang'].".php");
            } else {
                include(THEMES_DIR.$conf[general][theme]."/lang/lang.en-us.php");
            } 
            $this->assign("theme_lang",$theme_lang);
        {/php}
		
        <div class="entry_date">
            <div class="day">{$date|date_format_daily:'%A'}</div>
            <div class="day_month">{$date|date_format_daily:'%e'}</div>
            <div class="month">{$date|date_format_daily:'%B'}</div>
            <div class="year">{$date|date_format_daily:'%Y'}</div>
        </div>

		<h3><a href="{$id|link:comments_link}">{$subject|tag:the_title}</a></h3>
		
		
		{* 	entry info  *}
		<div>
		<ul class="entry-info">
		    <li>
		        <span class="posted-by_mini img_mini">{$theme_lang.postedBy}{$author}{$theme_lang.beforeDate}
		        {$date|date_format:"%H:%M:%S"}</span>
		        &nbsp;//&nbsp;
		        <span class="view_mini img_mini">{if isset($views)}{$theme_lang.beforeReadNumber}{$views}{$theme_lang.afterReadNumber}{/if}</span>
		        &nbsp;//&nbsp;
		        {include file=shared:entryadminctrls.tpl}
		    </li> 
		
		    {* categories *}
		    {if ($categories)}
		        <li><span class="category_mini img_mini">
		            {$categories|@filed}
		        </span></li>
		    {/if}
		</ul>
		</div>
		
		
		{$content|tag:the_content}
		
		
		<ul class="entry-info">
		
		    <li class="alignRight">
		        {* 	comments links  *}
		        <span class="add-comment_mini img_mini"><a class="add-comment" href="{$id|link:comments_link}#comments">{$comments|tag:comments_number}</a></span>
		        &nbsp;//&nbsp; 
		        <span class="permalink_mini img_mini"><a class="permalink" href="{$id|link:comments_link}">{$theme_lang.permalink}</a></span>
		
		        {* 	social links  *} 
		        &nbsp;//&nbsp;{$theme_lang.addTo}
		        <a class="img_link delicious_link" style="border-style: none" href="http://del.icio.us/post?v=4&noui&jump=close&url={$id|link:post_link}&title={$subject|tag:the_title}" title="{$theme_lang.addToDelicious}">&nbsp;</a>
		        &nbsp; &nbsp;
		        <a class="img_link technorati_link" style="border-style: none" href="http://www.technorati.com/faves?add={$id|link:post_link}" title="{$theme_lang.addToTechnorati}">&nbsp;</a>
		        &nbsp; &nbsp;
		        <a class="img_link digg_link" style="border-style: none" href="http://digg.com/submit?url={$id|link:post_link}&title={$subject|tag:the_title}" title="{$theme_lang.addToDigg}">&nbsp;</a>
		        &nbsp; &nbsp;
		        <a class="img_link stumbleupon_link" style="border-style: none" href="http://www.stumbleupon.com/submit?url={$id|link:post_link}&title={$subject|tag:the_title}" title="{$theme_lang.addToStumbleUpon}">&nbsp;</a>
		    </li>
		
		</ul>
		
		{* 	link to top  *}
		<a class="top_link" href="#head" title="{$theme_lang.backToTop}">{$theme_lang.backToTop}</a>

	</div>
	
