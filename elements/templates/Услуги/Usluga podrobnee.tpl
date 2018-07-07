name:Услуга подробнее
description:Service inside
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
				{{left_bar_service}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					<div>
						[*content*]
					</div>
					<div class="gallery-usluga uk-grid uk-grid-small">
						{{service_gallery_block}}
						{{callback_services_block}}
						<div class="back-button"><a href="[~[*parent*]~]" class="primary-button-border"><i class="uk-icon-angle-left"></i><span> Вернуться к списку услуг</span></a></div>
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