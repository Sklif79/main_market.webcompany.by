name:Услуга подробнее версия 2.0 (Презентация)
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
				{{left_bar}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					
					[*service_inner_v20_right_block_visible:is=`1`:then=`{{service_inner_image_and_right_block}}`:else=`{{service_inner_image_not_right_block}}`*]

			
					<!--@- преимущества -@-->
					{{product_new_dignity_block}}
					
					<!--@- Вставка Блока Акция -@-->					
					[*tv_block_insert*]

					<!--@- Описание -@-->
					{{block_description? &header=`Описание` &more_btn_text=`Подробнее`}}
					

					
					<!--@- Персональный менеджер -@-->
					{{card_personal_manager}}

					<!--@- таблица характеристик -@-->
					{{card_characteristics}}

					<!--@- Документы, файлы для скачивания -@-->
					{{card_documents}}
					
					<!--@- Видео -@-->
					{{product_new_video_block}}

					<!--@- Прайс-лист -@-->
					<div class="price-sheet">
						<h4>Прайс-лист</h4>

						<div class="price-text">
							[[DocLister? &id=`price` &parents=`14` &depth=`0` &tvPrefix=`` &tvList=`file_price` &tpl=`price_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0` &filters=``]]
						</div>
					</div>
					
					<!--@- Сертификаты -@-->
					{{card_sertificates? &block_name=`Сертификаты`}}
					
					<!--@- Расписание -@-->
					{{card_calendar? &block_name=`Расписание`}}
					
					<!--@- Вопросы -@-->
					{{product_new_questions? &block_name=`Вопрос-ответ` &button_text=`Добавить свой вопрос`}}

					<!--@- Галерея -@-->
					{{card_gallery? &block_name=`Галерея`}}
					
					<!--@- Отзывы -@-->
					{{card_reviews? &block_name=`Отзывы` &button_text=`Добавить свой отзыв`}}
					
					<!--@- С этим товаром покупают -@-->
					{{card_similar_item? &block_name=`Продукция`}}					
		
					<!--@- Услуги -@-->
					{{card_services? &block_name=`Другие услуги` &parent_id=`35`}}
					
					<!--@- Выполненные проекты -@-->
					{{card_completed_projects? &block_name=`Выполненные проекты` &parent_id=`365`}}
					
				    <!--@- Форма 4 -@-->
				   {{card_question? &title_r=`Наши специалисты ответят на любой интересующий вопрос по данному товару` &button_name=`Оставить заявку`}}

					<!--@- Наши специалисты -@-->
					<h4>Наша команда</h4>
					[[DocLister? &id=`our_specialists` &parents=`1197` &depth=`0` &tvPrefix=`` &tvList=`add_header_sertif_check` &tpl=`our_specialists_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0`]]
					
					<!--@- SEO Блок -@-->
					{{product_new_bottom_text_block}}			
					
					
					<!--@- Форма 1 -@-->
                    {{leave_request? &icon_url=`assets/templates/market/img/update/customer-service.svg` &title_r=`Остались вопросы?` &content_r=`Оставьте заявку и мы ответим на все вопросы` &button_name=`Оставить заявку`}}
					
					<!--@- Советуем почитать -@-->
					{{card_articles? &block_name=`Советуем почитать статьи` &parent_id=`20`}} 

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
