name:Товар подробное описание (Презентация)
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
								[[if? &is=`[*articul*]:empty` &then=`` &else=`
								<div class="main-first-info__articul">
									Артикул: <span>[*articul*]</span>
								</div>`]]
								<div class="main-first-info__rating">
									[!star_rating? &id=`[*id*]`  &tpl=`@CHUNK:star_rating_tpl` !]
								</div>

								<!--@-Бренд-@-->
								{{prod_brand}}
							</div>
							<div class="main-first-info-presence-wrap">
								<div class="main-first-info__print">
									<span>Печать</span>
								</div>

								<!-- при отсутствии товара к классу main-first-info-presence-wrap-inner добавить order -->
								<div class="main-first-info-presence-wrap-inner [[class_order_product_add]]">
									<div class="main-first-info">
										<div class="availability">
											[[disp_icon_capt_text_prew]]
										</div>
									</div>
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

										<div class="card-buy__low-cost">
											<a href="#callback" data-uk-modal="">
												<img src="assets/templates/market/img/update/low-cost.svg" alt="">
												<span>Нашли дешевле?</span>
											</a>
										</div>


										<div class="buy-block shk-item">
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
												<svg width="13" height="10" viewBox="0 0 13 10" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
													<g id="Canvas__checked-in-basket">
														<path id="Vector__checked-in-basket" d="M 0 2.8L 4.125 7L 11 0" transform="translate(1 1)" stroke-width="2" />
													</g>
												</svg>
												В корзине
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
					{{product_new_dignity_block}}
					
					<!-- таблица цен, ниже будет таблица для мобильной версии -->
					{{card_cost_table}}
					
					<!--@- Вставка Блока Акция -@-->					
					[*tv_block_insert*]

					<!-- наличие в магазинах -->
					{{card_available_in_stores? &block_name='Наличие в магазинах'}}

					<!--@- таблица характеристик -@-->
					{{card_characteristics}}

					<!--@-{{specifications_prod_new}}-@-->

					<!--@- Документы, файлы для скачивания -@-->
					{{card_documents}}
					
					<!--@- Описание -@-->
					[[if? &is=`[*content*]:empty` &then=`` &else=`
					<div class="card-description-more">
						<h4>Описание</h4>

						<div class="card-description-more__txt hidden">
							[*content*]
						</div>
						[*content:len:gt='400':then='<span class="card-description-more__btn">Подробнее</span>'*]
					</div>
					`]]
					
					<!--@- Персональный менеджер -@-->
					{{card_personal_manager}}
					
					<!--@- Сертификаты слайдер-@-->
					{{card_sertificates_slider? &block_name='Сертификаты слайдер'}}

					<!--@- Видео -@-->
					{{product_new_video_block}}
					
					<!--@- Галерея -@-->
					{{card_gallery? &block_name='Галерея'}}

					<!--@- Прайс-лист -@-->
					<div class="price-sheet">
						<h4>Прайс-лист</h4>

						<div class="price-text">
							[[DocLister? &id=`price` &parents=`14` &depth=`0` &tvPrefix=`` &tvList=`file_price` &tpl=`price_tpl` &orderBy=`menuindex ASC` &total=`1` &noneWrapOuter=`0` &filters=``]]
						</div>
					</div>
					
					<!--@- С этим товаром покупают -@-->
					{{card_similar_item? &block_name=`С этим товаром покупают`}}
				
                   <!--@- Форма 4 -@-->
				   {{card_question? &title_r=`Наши специалисты ответят на любой интересующий вопрос по данному товару` &button_name=`Оставить заявку`}}
					
					<!--@- Вопросы -@-->
					{{product_new_questions? &block_name=`Вопрос-ответ` &button_text=`Добавить свой вопрос`}}

					<!--@- Наши специалисты -@-->
					<h4>Наша команда</h4>
					[[DocLister? &id=`our_specialists` &parents=`1197` &depth=`0` &tvPrefix=`` &tvList=`add_header_sertif_check` &tpl=`our_specialists_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0`]]
					
					<!--@- Выполненные проекты -@-->
					{{card_completed_projects? &block_name=`Выполненные проекты` &parent_id=`365`}}

					<!--@- Услуги -@-->
					{{card_services? &block_name=`Услуги` &parent_id=`771`}}

					<!--@- Отзывы -@-->
					{{card_reviews? &block_name=`Отзывы` &button_text=`Добавить свой отзыв`}}

					<!--@- SEO Блок -@-->
					{{product_new_bottom_text_block}}
					
					<!--@- Форма 1 -@-->
                    {{leave_request? &icon_url=`assets/templates/market/img/update/customer-service.svg` &title_r=`Остались вопросы?` &content_r=`Оставьте заявку и мы ответим на все вопросы` &button_name=`Оставить заявку`}}
					
					<!--@- Советуем почитать -@-->
					{{card_articles? &block_name=`Советуем почитать статьи` &parent_id=`20`}} 

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
