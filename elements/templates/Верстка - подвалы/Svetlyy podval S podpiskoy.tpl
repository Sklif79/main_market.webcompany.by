name:Светлый подвал С подпиской
description:
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
				</div>
			</div>
		</div>
		<footer class="footer footer-var-2">
			{{footer_v2}}
		</footer>
		<div class="modal">
			{{modal_forms_block}}
		</div>
	</body>
</html>