name:Каталог услуг - вид 3
description:Index
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
						
		</div>

		<div class="catalog-main" >

			<div class="container">
				[*content@53*]
				<div class="uk-grid uk-grid-width-1-1 uk-grid-width-medium-1-2" data-uk-grid-match="{target:'.wrap-catalog'}">
					[[DocLister? &id=`catalog_index` &parents=`35` &depth=`0` &tvPrefix=`` &tvList=`subcat_img_prew` &tpl=`catalog_index_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0` &filters=`AND(content:isfolder:=:1)`]]
				</div>
			</div>			
		</div>



		<footer class="footer [+footer_add_class+]">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_forms_block}}
		</div>
	</body>
</html>