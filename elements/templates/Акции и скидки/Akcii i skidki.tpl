name:Акции и скидки
description:Sale
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
			<div class="uk-grid">
				{{left_bar}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					[[DocLister? &id=`sale` &tvPrefix=`` &tvList=`img_prev_sale,sale_date` &tpl=`sale_tpl` &tplLast=`sale_last_tpl` &orderBy=`menuindex DESC` &prepare=`preparethumb` &phumb_img=`img_prev_sale` &phumb_options=`w=600,h=431,f=png,q=95,far=C,bg=ffffff`]]
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