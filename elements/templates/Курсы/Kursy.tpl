name:Курсы
description:Courses
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
				{{left_bar_courses}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					<ul class="uk-grid uk-grid-width-1-1 uk-grid-width-small-1-2 uk-grid-width-large-1-3 subcategory uk-clearfix">
						[[DocLister? &id=`diluting` &tvPrefix=`` &tvList=`diluting_img_prew` &tpl=`diluting_tpl` &orderBy=`menuindex ASC`]]
					</ul>
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