name:Список разделов и под разделов
description:Product catalog general
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
				{{left_bar_catalog}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					<div class="catalog-main-obshii">
						[[if? &is=`[*content*]:empty` &then=`` &else=`<div class="catalog_content">[*content*]</div>`]]
						<div class="uk-grid uk-grid-width-1-1" data-uk-grid-match="{target:'.wrap-catalog'}">
							[[DocLister? &id=`catalog_general` &parents=`[*id*]` &depth=`0` &tvPrefix=`` &tvList=`subcat_img_prew` &tpl=`catalog_index_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0` &filters=`AND(content:isfolder:=:1;content:hidemenu:=:0)`]]
						</div>
					</div>
					
					{{bottom_text_prod}}
					
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