name:Результаты поиска
description:Search result
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
			[+breadcrumbs_default+]
			
			<div class="search-page">
				<form class="search-panel-gh" action="[~97~]">
					<div class="container flex-search-panel">
						<input type="text" placeholder="Поиск..." required pattern='[A-Za-zА-Яа-яЁё-0-9]{3,50}' name='s'/>
						<button type="submit" class="primary-button">Найти</button>
					</div>
				</form>
				[!search_rez!]
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