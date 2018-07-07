name:Проект подробнее версия 2.0 (Набор 2)
description:Project inside ver. 2.0
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

		<div class="container second-page">
			<div class="uk-grid">
				{{left_bar}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					<div class="projects-card">	
						<!--@-Слайдер-@-->
						{{projects_card_slider}}

						<!--@-Блок справа от слайдера-@-->
						[*projects_right_block_visible:is=`1`:then=`{{projects_right_block}}`*]
						<div class="main-first-info__print">
							<span>Печать</span>
						</div>
					</div>

					<!--@- преимущества -@-->
					{{product_new_dignity_block}}

					<!--@- Описание -@-->
					[*content*]

					<!--@- таблица характеристик -@-->
					{{card_characteristics}}

					<!--@- Документы, файлы для скачивания -@-->
					{{card_documents}}




					<!--@- Видео -@-->
					{{product_new_video_block}}

					<!--@- Прайс-лист -@-->
					<!--@- <div class="price-sheet">
<h4>Прайс-лист</h4>

<div class="price-text">
[[DocLister? &id=`price` &parents=`14` &depth=`0` &tvPrefix=`` &tvList=`file_price` &tpl=`price_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0` &filters=``]]
</div>
</div>-@-->

					<!--@- Галерея -@-->
					{{card_gallery? &block_name=`Галерея`}}

					<!--@- Наши специалисты -@-->
					[[DocLister? &id=`our_specialists` &parents=`1176` &depth=`0` &tvPrefix=`` &tvList=`add_header_sertif_check` &tpl=`our_specialists_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0`]]

					<!--@- Персональный менеджер -@-->
					{{card_personal_manager}}

					<!--@- Выполненные проекты -@-->
					<!--@-{{card_completed_projects? &block_name=`Выполненные проекты` &parent_id=`365`}}-@-->

					<!--@- Сертификаты слайдер-@-->
					<!--@-{{card_sertificates_slider? &block_name=`Сертификаты слайдер`}}-@-->

					<!--@- Сертификаты -@-->
					{{card_sertificates? &block_name=`Сертификаты`}}

					<!--@- Расписание -@-->
					{{card_calendar? &block_name=`Расписание`}}



					<!--@- Отзывы -@-->
					{{card_reviews? &block_name=`Отзывы` &button_text=`Добавить свой отзыв`}}

					<!--@- Вопросы -@-->
					{{product_new_questions? &block_name=`Часто задоваемые вопросы` &button_text=`Добавить свой вопрос`}}

					<!--@- Стили для текста. Блоки с различнм текстом -@-->
					{{product_new_bottom_text_block}}

					<!--@- С этим товаром покупают -@-->
					<!--@-{{card_similar_item? &block_name=`Продукция`}}-@-->

					<!--@- Услуги -@-->
					{{card_services? &block_name=`Другие услуги` &parent_id=`372`}}

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