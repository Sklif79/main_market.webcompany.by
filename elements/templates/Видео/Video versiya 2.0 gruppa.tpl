name:Видео версия 2.0 группа
description:Video version 2.0 group
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
						<div class="our-specialists">
							[[ddGetMultipleField? &inputString_docField=`product_new_video_block` &inputString_docId=`[*id*]` &rowTpl=`product_new_video_block_tpl` &outerTpl=`product_new_video_block_outer_tpl`]]
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