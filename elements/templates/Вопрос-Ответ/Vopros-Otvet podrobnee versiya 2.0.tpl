name:Вопрос-Ответ подробнее версия 2.0
description:FAQ
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
					
					[[if? &is=`[*content*]:empty` &then=`` &else=`<div>
						[*content*]
					</div>
					<hr/>`]]
					<div class="card-reviews">
						<div class="title-wrap">
							<h4></h4>
							<a href="#answer" data-uk-modal class="title-button">Добавить свой вопрос</a>
						</div>

						<div class="question-wrap">
							[[ddGetMultipleField? &inputString_docField=`question_answer` &rowTpl=`question_answer_product_tpl`]]
						</div>
						[*questions_product_after_text*]
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

