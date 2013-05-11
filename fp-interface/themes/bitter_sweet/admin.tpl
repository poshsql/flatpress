{include file=cpheader.tpl}

		<div id="cpmain">
			

		<div class="entry">
		
		<ul id="admin-small-nav">
			<li><a href="index.php">Home</a></li>
			<li><a href="login.php?do=logout">Logout</a></li>
		</ul>
		
		{page}
				<h1 class="title">{$subject}</h1>
				<div class="body">{controlpanel}</div>
		{/page}
		</div>
		
		</div>
		</div>
	
{include file=footer.tpl}



