name:Вакансия версия 2.0
description:Jobs v. 2.0
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
					<div>
						[*content*]
						
						[[DocLister? &id=`jobs_catalog` &parents=`[*id*]` &depth=`0` &display=`all` &tvPrefix=`` &tvList=`add_header_sertif_check` &tpl=`jobs_catalog_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0`]]
					</div>
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