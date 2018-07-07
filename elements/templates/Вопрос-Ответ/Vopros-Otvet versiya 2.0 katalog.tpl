name:Вопрос-Ответ версия 2.0 каталог
description:FAQ_catalog_ver_2.0
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
					
					[[if? &is=`[*content*]:empty` &then=`` &else=`<div>
						[*content*]
					</div>
					<hr/>`]]
					[[DocLister? &id=`questions_group` &parents=`[*id*]` &depth=`0` &display=`all` &tvPrefix=`` &tvList=`add_header_sertif_check,questions_product_after_text` &tpl=`questions_group_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0`]]
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