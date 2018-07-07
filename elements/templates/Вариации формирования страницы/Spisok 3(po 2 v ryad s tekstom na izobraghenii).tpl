name:Список 3(по 2 в ряд с текстом на изображении)
description:Services template 1
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
					<!-- выполненные проекты -->
					<div class="completed-project-wrapper">
						<div class="completed-project-inner">
							[[DocLister? &id=`services_template_1` &parents=`[*id*]` &depth=`0` &tvPrefix=`` &tvList=`services_img_prev_new` &tpl=`services_template_1_tpl` &orderBy=`menuindex ASC` &total=`all`]]
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