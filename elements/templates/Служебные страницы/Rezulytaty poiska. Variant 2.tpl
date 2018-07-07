name:Результаты поиска. Вариант 2
description:Search result. Variant 2. DocLister
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
				{{left_bar_search}}
				
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]

					<div class="search-page">
						<form class="search-panel-gh" action="[~[*id*]~]">
							<div class="container flex-search-panel">
								<input type="text" placeholder="Поиск..." required pattern="[A-Za-zА-Яа-яЁё-0-9]{3,50}" name="s" value="[+search.q+]"/>
								<button type="submit" class="primary-button">Найти</button>
							</div>
						</form>

						[!Search_result_var2!]

						[+search.pages+]
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