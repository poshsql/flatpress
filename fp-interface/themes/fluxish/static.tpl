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
                
                {include file='static_main.tpl'}
                {include file='widgets.tpl'}
                
			    
			    {* 3 columns layout, one left and right sidebars *}
			    {*
			    {include file='left_sidebar.tpl'}
                {include file='static_main.tpl'} 
                {include file='right_sidebar.tpl'}
                *}
                
                {* one right sidebar *}
                {*
                <div id="main" class="grid_13">
					{static_block}
					{static}
						<div id="{$id}" class="entry page-{$id}">
							<h3>{$subject}</h3>
							{$content|tag:the_content}
						</div>
					{/static}
					{/static_block}
		        </div>
                <div id="single_right_sidebar" class="grid_3">
                    {include file='left_sidebar.tpl'}
                    {include file='right_sidebar.tpl'}
                </div>
                *}
			    
			    {include file='widgets.tpl'}
		    
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
