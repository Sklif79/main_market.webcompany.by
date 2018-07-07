name:Фотогалерея подробнее версия 3.0
description:Photo gallery more version 3.0
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
					<div class="card-gallery">
						[[ddGetMultipleField? &inputString_docField=`card_gallery` &inputString_docId=`[*id*]` &rowTpl=`card_gallery_tpl` &outerTpl=`card_gallery_outer_tpl`]]

						[[ddGetMultipleField? &inputString_docField=`card_gallery` &inputString_docId=`[*id*]` &rowTpl=`card_gallery_pager_tpl` &outerTpl=`card_gallery_pager_outer_tpl`]]
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