name:Карта сайта
description:sitemap.html
======
<!DOCTYPE html>
<html lang="ru">
	<head>
		{{head}}
	</head>
	<body>

		<header class="header [+noshadow_class+]">
			{{header}}
		</header>

		<!-- --@ корзина по ховеру под корзиной в header @-- -->
		{{basket_under_header}} [[breadcrumbs_select_load]]

		<div class="container second-page">
			[+breadcrumbs_default+]
			
			<nav class="sitemap-menu">
			[[DLMenu? &parents=`0` &maxDepth=`5` &outerTpl=`@CODE:<ul id='nav_list_first' [+classes+]>[+wrap+]</ul>` &rowTpl=`@CODE:<li [+classes+]><a href="[+url+]" title="[+title+]">[+title+]</a><span class='sitemap-arr'></span></li>` &parentRowTpl=`@CODE:<li [+classes+]><a href="[+url+]" title="[+title+]">[+title+]</a><span class='sitemap-arr'></span>[+wrap+]</li>` &outerClass=`nav_list` &addWhereList=`c.isfolder = 1 AND c.searchable = 1`]]	
			</nav>
		</div>
		<footer class="footer [+footer_add_class+]">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_forms_block}}
		</div>
	</body>
</html>