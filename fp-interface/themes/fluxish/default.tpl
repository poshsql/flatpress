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
                {include file='default_main.tpl'}
                {include file='widgets.tpl'}
                *}
			    
			    {* 3 columns layout, one left and right sidebars *}
			    {*
			    {include file='left_sidebar.tpl'}
                {include file='default_main.tpl'} 
                {include file='right_sidebar.tpl'}
                *}
                
                {* one right sidebar *}
                
                <div id="main" class="grid_13">
            		<div class="entry">
            			<h3 class="title">{$subject}</h3>
            			<div class="body">
            			
            			{if $rawcontent} {$content}
            			{else}	{include file=$content}{/if}
            			
            			</div>
            		</div>
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



