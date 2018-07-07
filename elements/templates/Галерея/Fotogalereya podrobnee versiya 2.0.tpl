name:Фотогалерея подробнее версия 2.0
description:Photo gallery more version 2.0
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
					<div class="projects-card">	
						<div class="projects-card-image-wrap">
							[[ddGetMultipleField? &inputString_docField=`projects_card_slider` &outerTpl=`@CODE:<div class="projects-card-slider">[+result+]</div>` &rowTpl=`projects_card_slider_tpl`]]

							[[ddGetMultipleField? &inputString_docField=`projects_card_slider` &outerTpl=`@CODE:<div class="projects-card-slider-pager">[+result+]</div>` &rowTpl=`projects_card_slider_pager_tpl`]]
						</div>
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