{entry content=$entry}
{php} 
    $conf = $this->get_template_vars('fp_config');
    if(file_exists(THEMES_DIR.$conf[general][theme]."/lang/lang.".$conf['locale']['lang'].".php")){
        include(THEMES_DIR.$conf[general][theme]."/lang/lang.".$conf['locale']['lang'].".php");
    } else {
        include(THEMES_DIR.$conf[general][theme]."/lang/lang.en-us.php");
    } 
    $this->assign("theme_lang",$theme_lang);
{/php}
<div class="entry grid_10 omega">
    <div class="entry_date">
        <div class="day">{$date|date_format_daily:'%A'}</div>
        <div class="day_month">{$date|date_format_daily:'%e'}</div>
        <div class="month">{$date|date_format_daily:'%B'}</div>
        <div class="year">{$date|date_format_daily:'%Y'}</div>
    </div>
	<h3>{$subject|tag:the_title}</h3>
    <p class="date"><span class="posted-by_mini img_mini">{$theme_lang.postedBy}{$author}{$theme_lang.beforeDate}
	    {$date|date_format:"%H:%M:%S"}</span></p>
	{$content|tag:the_content}
</div>
{/entry}

