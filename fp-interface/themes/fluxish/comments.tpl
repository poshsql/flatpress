{include file=header.tpl}

			<div id="page" class="container container_16">
			    <div id="headerbar" class="grid_16">
			        <div class="bar grid_16">
	                    {widgets pos=top} 
					        <div id="{$id}" class="grid_3"> 
						        <h4>{$subject}</h4> 
						        {$content} 
					        </div> 
				        {/widgets}
			        </div>
			    </div>
			    
			    {* 2 right sidebars layout (classic) *}
                {*
                {include file='comments_main.tpl'}
                {include file='widgets.tpl'}
                *}
			    
			    {* 3 columns layout, one left and right sidebars *}
			    {*
			    {include file='left_sidebar.tpl'}
                {include file='comments_main.tpl'} 
                {include file='right_sidebar.tpl'}
                *}
                
                {* one right sidebar *}
                
		        <div id="main" class="grid_13">
		        {entry_block}
					{entry}
						{include file=entry-default.tpl}
					{comment_block}
					<ol id="comments">
					{comment}
						<li id="{$id}" {$loggedin|notempty:"class=\"comment-admin\""}>
							
							<strong class='comment-name'>
							{$url|notempty:"<a href=\"$url\" title=\"Permalink to $name's comment\">$name</a>"|default:$name}
							</strong>
							
							{include file=shared:commentadminctrls.tpl}
							
							<p class="date">
							<a href="{$entryid|link:comments_link}#{$id}">{$date|date_format:"%A, %B %e, %Y - %H:%M:%S"}</a>
							</p>
							
							{$content|tag:comment_text}
							
						</li>
					{/comment}
					</ol>
					{/comment_block}

					{/entry}

					
							
						<div class="navigation">
							{nextpage}{prevpage}
						</div>


				{/entry_block}
				
				{include file="shared:comments.tpl"}
	            </div>
	            
	            <div id="single_right_sidebar" class="grid_3">
                    {include file='left_sidebar.tpl'}
                    {include file='right_sidebar.tpl'}
                </div>
                
                
            </div>
            
		    <div id="foot">
		        <div id="footerbar">
                    <div class="bar container_16">
                        {widgets pos=bottom} 
		                    <div id="{$id}" class="grid_3"> 
			                    <h4>{$subject}</h4> 
			                    {$content} 
		                    </div> 
	                    {/widgets} 
                    </div>
                </div>

{include file=footer.tpl}
