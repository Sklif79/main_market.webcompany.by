name:Товар подробное описание
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


					<div class="main-first-product-block">

						{{prod_ins_slider_gallery_new}}

						<div class="main-first-info-wrap">
							<div class="main-first-info-header">
								<!--@-Артикул-@-->
								[[visible_chunk? 
								&id_param_val=`99`
								&chunk_name=`@CODE: 
								[[if? &is=`[*articul*]:empty` &then=`` &else=`
								<div class="main-first-info__articul">
									Артикул: <span>[*articul*]</span>
								</div>
								`]]` 
								&tv_visible_name=`articul_product_visible` 
								&session_param_name=`articul_product_visible`
								&chunk_placeholders=``
								]]

								<div class="main-first-info__rating">
									[!star_rating? &id=`[*id*]`  &tpl=`@CHUNK:star_rating_tpl` !]
								</div>

								<!--@-Бренд-@-->
								{{prod_brand}}
							</div>
							<div class="main-first-info-presence-wrap">
								[[visible_chunk? 
								&id_param_val=`99`
								&chunk_name=`@CODE: <div class="main-first-info__print"><span>Печать</span></div>` 
								&tv_visible_name=`print_product_visible` 
								&session_param_name=`print_product_visible`
								]]

								<!--@- при отсутствии товара к классу main-first-info-presence-wrap-inner добавить order -@-->
								<div class="main-first-info-presence-wrap-inner [[class_order_product_add]]">
									<!--@-Иконка наличия товара-@-->
									[[visible_chunk? 
									&id_param_val=`99`
									&chunk_name=`@CODE: 
									<div class="main-first-info">
										<div class="availability">
											[[disp_icon_capt_text_prew]]
										</div>
									</div>` 
									&tv_visible_name=`availability_product_visible` 
									&session_param_name=`availability_product_visible`
									&chunk_placeholders=``
									]]

									<div class="price">
										<p>[[format_pr? &format_pr=`[*new_price*]`]] <span class="price_rub">руб.</span></p>
										[[if? &is=`[*old_price*]:empty` &then=`` &else=`
										<span class="price-old-wrap">
											<span class="price_old_rub_val">[[format_pr? &format_pr=`[*old_price*]`]]</span>
											<span class="price_old_rub"> руб.</span>
										</span>
										`]]
									</div>

									<div class="card-buy-wrap">
										[[economy? &new_price=`[*new_price*]` &old_price=`[*old_price*]` &tpl=`card_buy_economy_tpl`]]
										<!--@-Таймер до конца акции-@-->
										[[action_timer]]

										[[visible_chunk? 
										&id_param_val=`99`
										&chunk_name=`@CODE: 
										<div class="card-buy__low-cost">
											<a href="#found_cheaper" data-uk-modal="">
												<img src="assets/templates/market/img/update/low-cost.svg" alt="">
												<span>Нашли дешевле?</span>
											</a>
										</div>` 
										&tv_visible_name=`found_cheaper_product_visible` 
										&session_param_name=`found_cheaper_product_visible`
										]]



										<div class="buy-block shk-item [[in_basket? &iddoc=`[*id*]` &in_basket_class=`in-basket`]]">
											<form class="count-form" method="post" action="[~[*id*]~]" data-trigger="spinner">
												<input type="hidden" name="shk-id" value="[*id*]" />
												<input type="hidden" name="shk-name" value="[*pagetitle*]" />
												<input type="hidden" name="shk-price" value="[*new_price*]" />
												<input type="hidden" name="shk-image" value="[*img_prew_prod*]" />
												<div class="count-block">
													<button type="button" class="count__form-btn" data-spin="down"></button>
													<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
													<button type="button" class="count__form-btn" data-spin="up"></button>
												</div>
												<input type="submit" class="buy-btn" value="В корзину">
											</form>

											<div class="in-basket-btn">
												<a href="[~140~]">
													<svg width="13" height="10" viewBox="0 0 13 10" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
														<g id="Canvas__checked-in-basket">
															<path id="Vector__checked-in-basket" d="M 0 2.8L 4.125 7L 11 0" transform="translate(1 1)" stroke-width="2" />
														</g>
													</svg>
													В корзине
												</a>
											</div>
										</div>
										<a href="#fast_buy" data-product="[*pagetitle*]" data-uk-modal class="buy-one">Купить в 1 клик</a>
										<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one">Заказать</a>
									</div>

								</div>
								[[if? &is=`[*introtext*]:empty` &then=`` &else=`
								<div class="main-first-info-presence__description">
									<p>[*introtext*]</p>
									<span class="presence-description-more">Подробнее</span>
								</div>
								`]]
							</div>
						</div>
					</div>

					<!--@- преимущества -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`product_new_dignity_block` 
					&tv_visible_name=`advantages_product_visible` 
					&session_param_name=`advantages_product_visible`
					]]

					<!--@- таблица цен, ниже будет таблица для мобильной версии -@-->
					<!--@- {{card_cost_table}}-@-->

					<!--@- Вставка Блока Акция -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`@CODE: [*tv_block_insert*]` 
					&tv_visible_name=`promotional_block_product_visible` 
					&session_param_name=`promotional_block_product_visible`
					]]

					<!--@- таблица характеристик -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_characteristics` 
					&tv_visible_name=`characteristics_product_visible` 
					&session_param_name=`characteristics_product_visible`
					&chunk_placeholders=``
					]]

					<!--@-{{specifications_prod_new}}-@-->



					<!--@- Описание -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_content` 
					&tv_visible_name=`content_product_visible` 
					&session_param_name=`content_product_visible`
					&chunk_placeholders=`{"block_name":"Описание"}`
					]]

					<!--@- Документы, файлы для скачивания -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_documents` 
					&tv_visible_name=`documentation_product_visible` 
					&session_param_name=`documentation_product_visible`
					&chunk_placeholders=``
					]]					

					<!-- наличие в магазинах -->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_available_in_stores` 
					&tv_visible_name=`availability_in_shops_product_visible` 
					&session_param_name=`availability_in_shops_product_visible`
					&chunk_placeholders=`{"block_name":"Наличие в магазинах"}`
					]]


					<!--@- Сертификаты слайдер-@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_sertificates_slider` 
					&tv_visible_name=`certificates_product_visible` 
					&session_param_name=`certificates_product_visible`
					&chunk_placeholders=`{"block_name":"Сертификаты слайдер"}`
					]]

					<!--@- Видео -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`product_new_video_block` 
					&tv_visible_name=`video_product_visible` 
					&session_param_name=`video_product_visible`
					&chunk_placeholders=``
					]]

					<!--@- Галерея -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_gallery` 
					&tv_visible_name=`gallery_product_visible` 
					&session_param_name=`gallery_product_visible`
					&chunk_placeholders=`{"block_name":"Галерея"}`
					]]

					<!--@- Прайс-лист -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`price_sheet_product_visible` 
					&tv_visible_name=`price_sheet_product_visible` 
					&session_param_name=`price_sheet_product_visible`
					&chunk_placeholders=`{"block_name":"Прайс-лист"}`
					]]

					<!--@- Вопросы -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`product_new_questions` 
					&tv_visible_name=`questions_product_visible` 
					&session_param_name=`questions_product_visible`
					&chunk_placeholders=`{"block_name":"Вопрос-ответ","button_text":"Добавить свой вопрос"}`
					]]

					<!--@- Наши специалисты -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_our_specialists` 
					&tv_visible_name=`our_command_product_visible` 
					&session_param_name=`our_command_product_visible`
					&chunk_placeholders=``
					]]

					<!--@- Выполненные проекты -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_completed_projects` 
					&tv_visible_name=`completed_projects_product_visible` 
					&session_param_name=`completed_projects_product_visible`
					&chunk_placeholders=`{"block_name":"Выполненные проекты","parent_id":"365"}`
					]]

					<!--@- Отзывы -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_reviews` 
					&tv_visible_name=`reviews_product_visible` 
					&session_param_name=`reviews_product_visible`
					&chunk_placeholders=`{"block_name":"Отзывы",}`
					]]

					<!--@- Персональный менеджер -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_personal_manager` 
					&tv_visible_name=`personal_manager_product_visible` 
					&session_param_name=`personal_manager_product_visible`
					&chunk_placeholders=``
					]]

					<!--@- С этим товаром покупают -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_similar_item` 
					&tv_visible_name=`similar_item_product_visible` 
					&session_param_name=`similar_item_product_visible`
					&chunk_placeholders=`{"block_name":"С этим товаром покупают"}`
					]]

					<!--@- Услуги -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_services` 
					&tv_visible_name=`services_product_visible` 
					&session_param_name=`services_product_visible`
					&chunk_placeholders=`{"block_name":"Услуги","parent_id":"771"}`
					]]

					<!--@- SEO Блок -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`product_new_bottom_text_block` 
					&tv_visible_name=`bottom_text_product_visible` 
					&session_param_name=`bottom_text_product_visible`
					&chunk_placeholders=``
					]]

					<!--@- Форма 1 -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`leave_request` 
					&tv_visible_name=`capture_form_product_visible` 
					&session_param_name=`capture_form_product_visible`
					&chunk_placeholders=`{"icon_url":"assets/templates/market/img/update/customer-service.svg","title_r":"Остались вопросы?","content_r":"Оставьте заявку и мы ответим на все вопросы","button_name":"Оставить заявку"}`
					]]

					<!--@- Форма 4 -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_question` 
					&tv_visible_name=`leave_request_product_visible` 
					&session_param_name=`leave_request_product_visible`
					&chunk_placeholders=`{"title_r":"Наши специалисты ответят на любой интересующий вопрос по данному товару","button_name":"Оставить заявку"}`
					]]

					<!--@- Советуем почитать -@-->
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`card_articles` 
					&tv_visible_name=`articles_product_visible` 
					&session_param_name=`articles_product_visible`
					&chunk_placeholders=`{"block_name":"Советуем почитать статьи","parent_id":"20"}`
					]]

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
