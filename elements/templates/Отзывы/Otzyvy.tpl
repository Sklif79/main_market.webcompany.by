name:Отзывы
description:reviews
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
					
					<div class="reviews-page">
						<div class="review">
							<div class="review-title">
								<h2>Отзывы о товаре:</h2>
								<a href="#review" data-uk-modal class="primary-button-border">добавить свой отзыв</a>
							</div>
							[[ddGetMultipleField? &inputString_docField=`reviews` &rowTpl=`reviews_tpl`]]
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