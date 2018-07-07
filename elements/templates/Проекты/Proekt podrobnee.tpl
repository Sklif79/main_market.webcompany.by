name:Проект подробнее
description:Project more
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
					</div>
					<div class="certificate margin">
						<h2>Фотографии выполненной работы:</h2>
						<div class="certif-block  uk-grid uk-grid-width-1-1 uk-grid-width-small-1-2 uk-grid-width-large-1-4">
							[[ddGetMultipleField? &inputString_docField=`gallery_project` &rowTpl=`gallery_project_tpl`]]
						</div>
					</div>
					<div class="gallery-usluga">
						<div class="back-button"><a href="[~[*parent*]~]" class="primary-button-border"><i class="uk-icon-angle-left"></i><span> Вернуться к списку выполненных проектов</span></a></div>
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