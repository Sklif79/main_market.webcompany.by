name:Список 1(2 ряда, текст под изобр-м + подкатегори)
description:Services template 3
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
				{{left_bar_service}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					<div>
						[*content*]
					</div>

					<!-- выполненные проекты в колонку -->
					<div class="projects-page-column-wrap">
						<div class="projects-page-column diluting-page">
							[[DocLister? &id=`services_template_7` &parents=`[*id*]` &depth=`0` &tvPrefix=`` &tvList=`services_img_prev_new,services_detailed_description_prew` &tpl=`services_template_7_tpl` &orderBy=`menuindex ASC` &total=`all`]]
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