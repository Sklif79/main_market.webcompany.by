name:Видео версия 2.0 каталог
description:Video version 2.0 directory
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
					
					[*content*]
					<div class="sotrudniki-page">
						<!--@- Видео -@-->
						[[DocLister? &id=`video_catalog` &parents=`[*id*]` &depth=`0` &tvPrefix=`` &tvList=`add_header_sertif_check` &tpl=`video_catalog_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0`]]
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