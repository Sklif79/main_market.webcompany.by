name:Вопрос-Ответ
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
					
					<div>
						[*content*]
					</div>
					<hr/>
					<div class="ask-page">
						<div class="main-title-ask">
							<h3>Вопросы</h3>
							<a href="#answer" data-uk-modal class="view-more no-refresh">добавить свой вопрос</a>
						</div>
						<div class="wrap">
							[[ddGetMultipleField? &inputString_docField=`question_answer` &rowTpl=`question_answer_tpl`]]
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

