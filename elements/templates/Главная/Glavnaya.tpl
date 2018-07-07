name:Главная
description:Index
======
<!DOCTYPE html>
<html lang="ru">
	<head>
		{{head}}
		[[visible_chunk? 
		&id_param_val=`99`
		&chunk_name=`index_map_init` 
		&tv_visible_name=`map_main_visible` 
		&session_param_name=`map_main_visible`
		]]
	</head>
	<body>
		<div id="main_wrap">
			<header class="header [+noshadow_class+]">
				{{header}}
			</header>

			<!-- --@ корзина по ховеру под корзиной в header @-- -->
			{{basket_under_header}}

			<!--@-Блок со слайдером-@-->
			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`slider-main` 
			&tv_visible_name=`slider_main_visible` 
			&session_param_name=`slider_main_visible`
			]]

			<!--@-Блок с преимуществами компании-@-->
			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`dignity-main` 
			&tv_visible_name=`dignity_main_visible` 
			&session_param_name=`dignity_main_visible`
			]]

			<!--@-Блок со страницами пользователя, которые он сам задает-@-->
			[[visible_chunk? 
			&id_param_val=`1`
			&chunk_name=`custom-pages-main` 
			&tv_visible_name=`add_custom_pages_main` 
			&session_param_name=`add_custom_pages_main`
			]]
			[[visible_chunk? 
			&id_param_val=`1`
			&chunk_name=`custom-pages-main-mobile` 
			&tv_visible_name=`add_custom_pages_main` 
			&session_param_name=`add_custom_pages_main`
			]]

			<!--@-Блок с услугами компании-@-->
			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`services-main` 
			&tv_visible_name=`services_main_visible` 
			&session_param_name=`services_main_visible`
			]]
			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`service_main_mobile` 
			&tv_visible_name=`services_main_visible` 
			&session_param_name=`services_main_visible`
			]]

			<!--@-Вывод блока с разделами и подразделами каталога-@-->
			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`catalog-main` 
			&tv_visible_name=`catalog_main_visible` 
			&session_param_name=`catalog_main_visible`
			]]

			<!--@- Вывод блока с товарами-новинками -@-->
			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`our_products_index` 
			&tv_visible_name=`our_novelty_visible` 
			&session_param_name=`our_novelty_visible`
			]]

			<!--@- Вывод блока "Нужна консультация" -@-->
			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`callback-main` 
			&tv_visible_name=`callback_main_visible` 
			&session_param_name=`callback_main_visible`
			]]

			<!--@- новый блок 07.07.2017 -@-->
			<!--@-Блок "Выполненые проекты". Блок со страницами пользователя, которые он сам задает-@-->
			[[visible_chunk? 
			&id_param_val=`1`
			&chunk_name=`custom-pages-proj-main` 
			&tv_visible_name=`add_custom_pages_proj_main` 
			&session_param_name=`add_custom_pages_proj_main`
			]]
			<!--@- /completed-projects -@-->

			<div class="information-main">
				<div class="container">				
					<div class="about-wrap">
						[[visible_chunk? 
						&id_param_val=`99`
						&chunk_name=`about_index` 
						&tv_visible_name=`about_index_visible` 
						&session_param_name=`about_index_visible`
						]]
						[[visible_chunk? 
						&id_param_val=`99`
						&chunk_name=`news_index` 
						&tv_visible_name=`news_index_visible` 
						&session_param_name=`news_index_visible`
						]]
					</div>				
				</div>
			</div>
			<div class="dignity">
				[[visible_chunk?
				&id_param_val=`99`
				&chunk_name=`sale_index`
				&tv_visible_name=`sale_index_visible`
				&session_param_name=`sale_index_visible`
				]]
				<div class="container">
					<div class="certificates">
						<div class="main-title">
							<h2>Сертификаты и клиенты</h2>
						</div>
						[[visible_chunk? 
						&id_param_val=`99`
						&chunk_name=`certificates_index` 
						&tv_visible_name=`certificates_index_visible` 
						&session_param_name=`certificates_index_visible`
						]]
						[[visible_chunk? 
						&id_param_val=`99`
						&chunk_name=`company-logo_index` 
						&tv_visible_name=`company_logo_index_visible` 
						&session_param_name=`company_logo_index_visible`
						]]
					</div>
				</div>
			</div>

			<div class="separator-lines"></div>

			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`reviews_index` 
			&tv_visible_name=`reviews_index_visible` 
			&session_param_name=`reviews_index_visible`
			]]

			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`map-main` 
			&tv_visible_name=`map_main_visible` 
			&session_param_name=`map_main_visible`
			]]

			<footer class="footer [+footer_add_class+]">
				{{footer}}
			</footer>
			<div class="modal">
				{{modal_forms_block}}
			</div>
		</div>
		{{modal_forms_settings}}
	</body>
</html>