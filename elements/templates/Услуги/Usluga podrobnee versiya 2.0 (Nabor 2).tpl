name:Услуга подробнее версия 2.0 (Набор 2)
description:Service more version 2.0
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
					
					
					[*service_inner_v20_right_block_visible:is=`1`:then=`{{service_inner_image_and_right_block}}`:else=`{{service_inner_image_not_right_block}}`*]

					<!--@- преимущества -@-->
					{{product_new_dignity_block}}
					
					<!--@- Вставка Блока Акция -@-->					
					[*tv_block_insert*]
					
					<!--@- Описание -@-->
					<!--@- {{block_description? &header=`Описание` &more_btn_text=`Подробнее`}}-@-->
					[*content*]

					
					<!--@- Форма 1 -@-->
                   <!--@-  {{leave_request? &icon_url=`assets/templates/market/img/update/customer-service.svg` &title_r=`Остались вопросы?` &content_r=`Оставьте заявку и мы ответим на все вопросы` &button_name=`Оставить заявку`}}-@-->

					<!--@- таблица характеристик -@-->
					{{card_characteristics}}

					<!--@- Документы, файлы для скачивания -@-->
					{{card_documents}}
					
					<!--@- Сертификаты -@-->
					{{card_sertificates? &block_name=`Сертификаты`}}

					
					<!--@- Видео -@-->
					{{product_new_video_block}}

					<!--@- Галерея -@-->
					{{card_gallery? &block_name=`Галерея`}}
					{{card_gallery}}

					<!--@- Персональный менеджер -@-->
					{{card_personal_manager}}

					<!--@- Расписание -@-->
					{{card_calendar? &block_name=`Расписание`}}

					<!--@- Вопросы -@-->
					{{product_new_questions? &block_name=`Вопросы` &button_text=`Добавить свой вопрос`}}
					
				    <!--@- Форма 4 -@-->
				   {{card_question? &title_r=`Наши специалисты ответят на любой интересующий вопрос по данной услуге` &button_name=`Оставить заявку`}}

					<!--@- Наши специалисты -@-->
					<!--@- <h4>Наша команда</h4> -@-->
					<!--@-[[DocLister? &id=`our_specialists` &parents=`1197` &depth=`0` &tvPrefix=`` &tvList=`add_header_sertif_check` &tpl=`our_specialists_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0`]] -@-->
					
					<!--@- SEO Блок -@-->
					{{product_new_bottom_text_block}}			
					
					

					
					<!--@- Услуги -@-->
					{{card_services? &block_name=`Другие услуги` &parent_id=`44`}}

					<div class="catalog-back">
						<!--@- Кнопка вернуться в каталог -@-->
						{{back_parent_link? &link_tutle=`К общему списку`}}

						<!--@- Кнопки поделиться в соцсетях -@-->
						{{share_btn_block}}
					</div>

				</div>
			</div>
		</div>

		<!--@-Просмотренные товары-@-->	
		[!our_view_id!]	

		<footer class="footer [+footer_add_class+]">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_forms_block}}
		</div>
		{{postfooter_js}}
	</body>

</html>
