<div id="main" class="grid_10">
					{static_block}
					{static}
						<div id="{$id}" class="entry page-{$id}">
							<h3>{$subject}</h3>
							
							{$content|tag:the_content}
						</div>
					{/static}

					{/static_block}
		        </div>
