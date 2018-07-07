name:Иконки (верстка)
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
						
						<h4>Иконки</h4>
				
				<p><i class="icons uk-icon-exclamation-circle"></i> Lorem Ipsum is simply dummy text of the printing and.</p>
				<p><i class="icons uk-icon-certificate"></i> Typesetting industry. Lorem Ipsum has been the industry's.</p>
				<p><i class="icons uk-icon-database"></i> Standard dummy text ever since the 1500s, when an unknown.</p>
				<p><i class="icons uk-icon-file-text"></i> Printer took a galley of type and scrambled it to make a type.</p>
				<a href="#">...more icons</a>
						
						
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