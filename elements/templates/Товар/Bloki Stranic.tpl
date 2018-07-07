name:Блоки Страниц
description:Product inside new
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
				{{left_bar_catalog}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					

                    [*content*]

					<!--@- преимущества -@-->
					<h6 style="background:#f5f5f5;">Блок - преимущества</h6>					
					{{product_new_dignity_block}}

					<!-- таблица цен, ниже будет таблица для мобильной версии -->
					<h6 style="background:#f5f5f5">Блок - Цены</h6>
					{{card_cost_table}}

					<!-- наличие в магазинах -->
					<h6 style="background:#f5f5f5">Блок - Наличие в магазинах</h6>					
					{{card_available_in_stores? &block_name=`Наличие в магазинах`}}

					<!--@- таблица характеристик -@-->
					<h6 style="background:#f5f5f5">Блок - Характеристики</h6>
					{{card_characteristics}}

					<!--@-{{specifications_prod_new}}-@-->

					<!--@- Документы, файлы для скачивания -@-->
					<h6 style="background:#f5f5f5;">Блок - Документы</h6>
					{{card_documents}}

					<!--@- Описание -@-->
					<h6 style="background:#f5f5f5;">Блок - Описание</h6>
					[[if? &is=`[*content*]:empty` &then=`` &else=`
					<div class="card-description-more">
						<h4>Описание</h4>

						<div class="card-description-more__txt hidden">
							[*content*]
						</div>
						[*content:len:gt='400':then='<span class="card-description-more__btn">Подробнее</span>'*]
					</div>
					`]]

					<!--@- Видео -@-->
					<h6 style="background:#f5f5f5">Блок - Видео</h6>
					{{product_new_video_block}}

					<!--@- Прайс-лист -@-->
					<h6 style="background:#f5f5f5">Блок - Прайс-лист</h6>
					<div class="price-sheet">
						<h4>Прайс-лист</h4>

						<div class="price-text">
							[[DocLister? &id=`price` &parents=`14` &depth=`0` &tvPrefix=`` &tvList=`file_price` &tpl=`price_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0` &filters=``]]
						</div>
					</div>

					<!--@- Галерея -@-->
					<h6 style="background:#f5f5f5">Блок - Галерея</h6>
					{{card_gallery? &block_name=`Галерея`}}
					
					<!--@- Форма 1 -@-->
					<h6 style="background:#f5f5f5">Блок - Форма Захвата 1</h6>
                    {{leave_request? &icon_url=`assets/templates/market/img/update/customer-service.svg` &title_r=`Остались вопросы?` &content_r=`Оставьте заявку и мы ответим на все вопросы` &button_name=`Оставить заявку`}}

                   <!--@- Форма 2 -@-->
				   <h6 style="background:#f5f5f5">Блок - Форма Захвата 2</h6>
				   {{leave_request? &icon_url=`` &title_r=`Остались вопросы?` &content_r=`Оставьте заявку и мы ответим на все вопросы` &button_name=`Оставить заявку`}}

                   <!--@- Форма 3 -@-->
				   <h6 style="background:#f5f5f5">Блок - Форма Захвата 3</h6>
				   {{leave_request? &icon_url=`` &title_r=`Остались вопросы?` &content_r=`Оставьте заявку и мы ответим на все вопросы` &button_name=``}}

                   <!--@- Форма 4 -@-->
				   <h6 style="background:#f5f5f5">Блок - Форма Захвата 4</h6>
				   {{card_question? &title_r=`Наши специалисты ответят на любой интересующий вопрос по данному товару` &button_name=`Оставить заявку`}}

					<!--@- Наши специалисты -@-->
				    <h6 style="background:#f5f5f5">Блок - Наши сотрудники</h6>
					<h4>Наша команда</h4>
					[[DocLister? &id=`our_specialists` &parents=`1197` &depth=`0` &tvPrefix=`` &tvList=`add_header_sertif_check` &tpl=`our_specialists_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0`]]

					<!--@- Персональный менеджер -@-->
				    <h6 style="background:#f5f5f5">Блок - Персональный менеджер</h6>
					{{card_personal_manager}}
					
					<!--@- Вставка Блока Акция -@-->
					<h6 style="background:#f5f5f5">Блок - Акция</h6>
					[*tv_block_insert*]

					<!--@- Выполненные проекты -@-->
					<h6 style="background:#f5f5f5">Блок - Вывод 1</h6>
					{{card_completed_projects? &block_name=`Вывод 1` &parent_id=`365`}}

					<!--@- Услуги -@-->
					<h6 style="background:#f5f5f5">Блок - Вывод 2</h6>
					{{card_services? &block_name=`Вывод 2` &parent_id=`35`}}
					{{card_completed_projects? &block_name=`Блок Выполненные проекты` &parent_id=`373`}}

					<!--@- Советуем почитать -@-->
					<h6 style="background:#f5f5f5">Блок - Вывод 3</h6>
					{{card_recomended? &block_name=`Вывод 3` &parent_id=`373,366`}}

					<!--@- Советуем почитать -@-->
					<h6 style="background:#f5f5f5">Блок - Вывод 4</h6>
					{{card_news? &block_name=`Вывод 4` &parent_id=`8`}}

					<!--@- Советуем почитать -@-->
					<h6 style="background:#f5f5f5">Блок - Вывод 5</h6>
					{{card_articles? &block_name=`Вывод 5` &parent_id=`20`}}

					<!--@- Сертификаты слайдер-@-->
					<h6 style="background:#f5f5f5">Блок - Сертификаты слайдер</h6>
					{{card_sertificates_slider? &block_name=`Сертификаты`}}

					<!--@- Сертификаты -@-->
					<h6 style="background:#f5f5f5">Блок - Сертификаты</h6>
					{{card_sertificates? &block_name=`Сертификаты`}}

					<!--@- Расписание -@-->
					<h6 style="background:#f5f5f5">Блок - Расписание</h6>
					{{card_calendar? &block_name=`Расписание`}}

					<!--@- С этим товаром покупают -@-->
					<h6 style="background:#f5f5f5">Блок - Товары</h6>
					{{card_similar_item? &block_name=`С этим товаром покупают`}}

					<!--@- Отзывы -@-->
					<h6 style="background:#f5f5f5">Блок - Отзывы</h6>
					{{card_reviews? &block_name=`Отзывы` &button_text=`Добавить свой отзыв`}}

					<!--@- Вопросы -@-->
					<h6 style="background:#f5f5f5">Блок - Вопросы</h6>
					{{product_new_questions? &block_name=`Вопро-ответ` &button_text=`Добавить свой вопрос`}}
					
					<!--@- Стили для текста. Блоки с различнм текстом -@-->
					<h6 style="background:#f5f5f5">Блок - Табы</h6>
					<div class="tabs-wrap">
						<div class="tabs">
							<span data-id="tabs__01" class="tab active">Харктеристики</span>
							<span data-id="tabs__02" class="tab">Документы</span>
							<span data-id="tabs__03" class="tab">Описание</span>
							<span data-id="tabs__04" class="tab">Видео</span>
							<span data-id="tabs__05" class="tab">Прайс-Лист</span>
							<span data-id="tabs__06" class="tab">Галерея</span>
						</div>

						<div class="panels">
							<div data-id="tabs__01" class="panel active">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi maiores nobis
									odit, saepe sed unde veniam. Culpa distinctio itaque iure numquam optio perferendis
									similique! A alias aperiam atque commodi dolorem eligendi, eos error esse fuga harum
									illo incidunt inventore itaque iure nemo neque nisi officia perferendis provident
									quasi, quod sit sunt totam veniam voluptatibus! Ad aliquam distinctio ducimus enim
									eum eveniet, facere fuga, id incidunt ipsum iste nihil nostrum quia, quod quos saepe
									suscipit tempore temporibus veritatis vitae? Accusantium culpa, cum doloribus
									dolorum expedita explicabo id minima mollitia obcaecati officia, quam quasi quia
									sapiente! Beatae cupiditate eos expedita modi quidem?
								</p>
							</div>

							<div data-id="tabs__02" class="panel">
								<p>2. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi maiores nobis
									odit, saepe sed unde veniam. Culpa distinctio itaque iure numquam optio perferendis
									similique! A alias aperiam atque commodi dolorem eligendi, eos error esse fuga harum
									illo incidunt inventore itaque iure nemo neque nisi officia perferendis provident
									quasi, quod sit sunt totam veniam voluptatibus! Ad aliquam distinctio ducimus enim
									eum eveniet, facere fuga, id incidunt ipsum iste nihil nostrum quia, quod quos saepe
									suscipit tempore temporibus veritatis vitae? Accusantium culpa, cum doloribus
									dolorum expedita explicabo id minima mollitia obcaecati officia, quam quasi quia
									sapiente! Beatae cupiditate eos expedita modi quidem?
								</p>
							</div>

							<div data-id="tabs__03" class="panel">
								<p>3. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi maiores nobis
									odit, saepe sed unde veniam. Culpa distinctio itaque iure numquam optio perferendis
									similique! A alias aperiam atque commodi dolorem eligendi, eos error esse fuga harum
									illo incidunt inventore itaque iure nemo neque nisi officia perferendis provident
									quasi, quod sit sunt totam veniam voluptatibus! Ad aliquam distinctio ducimus enim
									eum eveniet, facere fuga, id incidunt ipsum iste nihil nostrum quia, quod quos saepe
									suscipit tempore temporibus veritatis vitae? Accusantium culpa, cum doloribus
									dolorum expedita explicabo id minima mollitia obcaecati officia, quam quasi quia
									sapiente! Beatae cupiditate eos expedita modi quidem?
								</p>
							</div>

							<div data-id="tabs__04" class="panel">
								<p>4. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi maiores nobis
									odit, saepe sed unde veniam. Culpa distinctio itaque iure numquam optio perferendis
									similique! A alias aperiam atque commodi dolorem eligendi, eos error esse fuga harum
									illo incidunt inventore itaque iure nemo neque nisi officia perferendis provident
									quasi, quod sit sunt totam veniam voluptatibus! Ad aliquam distinctio ducimus enim
									eum eveniet, facere fuga, id incidunt ipsum iste nihil nostrum quia, quod quos saepe
									suscipit tempore temporibus veritatis vitae? Accusantium culpa, cum doloribus
									dolorum expedita explicabo id minima mollitia obcaecati officia, quam quasi quia
									sapiente! Beatae cupiditate eos expedita modi quidem?
								</p>
							</div>

							<div data-id="tabs__05" class="panel">
								<p>5. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi maiores nobis
									odit, saepe sed unde veniam. Culpa distinctio itaque iure numquam optio perferendis
									similique! A alias aperiam atque commodi dolorem eligendi, eos error esse fuga harum
									illo incidunt inventore itaque iure nemo neque nisi officia perferendis provident
									quasi, quod sit sunt totam veniam voluptatibus! Ad aliquam distinctio ducimus enim
									eum eveniet, facere fuga, id incidunt ipsum iste nihil nostrum quia, quod quos saepe
									suscipit tempore temporibus veritatis vitae? Accusantium culpa, cum doloribus
									dolorum expedita explicabo id minima mollitia obcaecati officia, quam quasi quia
									sapiente! Beatae cupiditate eos expedita modi quidem?
								</p>
							</div>

							<div data-id="tabs__06" class="panel">
								<p>6. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi maiores nobis
									odit, saepe sed unde veniam. Culpa distinctio itaque iure numquam optio perferendis
									similique! A alias aperiam atque commodi dolorem eligendi, eos error esse fuga harum
									illo incidunt inventore itaque iure nemo neque nisi officia perferendis provident
									quasi, quod sit sunt totam veniam voluptatibus! Ad aliquam distinctio ducimus enim
									eum eveniet, facere fuga, id incidunt ipsum iste nihil nostrum quia, quod quos saepe
									suscipit tempore temporibus veritatis vitae? Accusantium culpa, cum doloribus
									dolorum expedita explicabo id minima mollitia obcaecati officia, quam quasi quia
									sapiente! Beatae cupiditate eos expedita modi quidem?
								</p>
							</div>
						</div>
					</div>

					<!--@- Стили для текста. Блоки с различнм текстом -@-->
					<h6 style="background:#f5f5f5">Всплывающая форма с возможносятми</h6>
					<a href="#all-inputs" class="submit-btn" data-uk-modal class="header-variable__lnk">Кнопка на форму</a>



					<!--@- Стили для текста. Блоки с различнм текстом -@-->
					<h6 style="background:#f5f5f5">Блок - Стилистики</h6>
					{{product_new_bottom_text_block}}

					<div class="catalog-back">
						<!--@- Кнопка вернуться в каталог -@-->
						{{back_catalog_link}}

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
