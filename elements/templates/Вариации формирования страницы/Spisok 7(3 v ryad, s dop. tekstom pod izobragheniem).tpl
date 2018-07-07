name:Список 7(3 в ряд, с доп. текстом под изображением)
description:Services template 6
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

					<!-- новости -->
					<div class="information-main information-main-page">
					
								<div class="news">

									<div class="news-wrap news-wrap-plates">
										[[DocLister? &id=`services_template_6` &parents=`[*id*]` &depth=`0` &tvPrefix=`` &tvList=`services_img_prev_new,serv_new_small_img,serv_action_text` &tpl=`services_template_6_tpl` &orderBy=`menuindex ASC` &total=`all`]]
									</div>
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