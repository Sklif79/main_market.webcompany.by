name:О компании
description:About
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
					<!--@- История компании -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`about_company_history` 
					&tv_visible_name=`company_history_about_visible` 
					&session_param_name=`company_history_about_visible`
					]]

					<!--@- Наши специалисты -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`about_our_specialists_var2` 
					&tv_visible_name=`workers_about_visible` 
					&session_param_name=`workers_about_visible`
					]]

					<!--@- Сертификаты -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`about_sertificates` 
					&tv_visible_name=`сertificates_about_visible` 
					&session_param_name=`сertificates_about_visible`
					]]

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