name:Карточка Товара
description:Product inside test
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

					<div class="main-first-product-block">
						<div class="main-first-image-wrap">
							<div class="main-first-image-slider">
								<!--  -->
								<div class="main-first-image-slider-el">
									<a href='assets/templates/market/img/card-item.jpg'>
										<img src="assets/templates/market/img/card-item.jpg" alt="">
										<div class="main-first-image-slider-el__overlay"></div>
									</a>
								</div>
								<!--  -->
								<div class="main-first-image-slider-el">
									<a href='assets/templates/market/img/card-item.jpg'>
										<img src="assets/templates/market/img/card-item.jpg" alt="">
										<div class="main-first-image-slider-el__overlay"></div>
									</a>
								</div>
								<!--  -->
								<div class="main-first-image-slider-el">
									<a href='assets/templates/market/img/card-item.jpg'>
										<img src="assets/templates/market/img/card-item.jpg" alt="">
										<div class="main-first-image-slider-el__overlay"></div>
									</a>
								</div>
								<!--  -->
								<div class="main-first-image-slider-el">
									<a href='assets/templates/market/img/card-item.jpg'>
										<img src="assets/templates/market/img/card-item.jpg" alt="">
										<div class="main-first-image-slider-el__overlay"></div>
									</a>
								</div>
								<!--  -->
								<div class="main-first-image-slider-el">
									<a href='assets/templates/market/img/card-item.jpg'>
										<img src="assets/templates/market/img/card-item.jpg" alt="">
										<div class="main-first-image-slider-el__overlay"></div>
									</a>
								</div>
								<!--  -->
								<div class="main-first-image-slider-el">
									<a href='assets/templates/market/img/card-item.jpg'>
										<img src="assets/templates/market/img/card-item.jpg" alt="">
										<div class="main-first-image-slider-el__overlay"></div>
									</a>
								</div>

								<div class="main-first-image-slider-el">
									<a href='assets/templates/market/img/card-item.jpg'>
										<img src="assets/templates/market/img/card-item.jpg" alt="">
										<div class="main-first-image-slider-el__overlay"></div>
									</a>
								</div>
							</div>
						</div>
						<div class="main-first-info-wrap">
							<div class="main-first-info-header">
								<div class="main-first-info__articul">
									Артикул: <span>378256</span>
								</div>
								<div class="main-first-info__rating">
									[!star_rating? &id=`[*id*]`  &tpl=`@CHUNK:star_rating_tpl` !]
								</div>
								<div class="main-first-info__share">
									Поделиться
									<div class="main-first-info__share-btn">
										<div class="ya-share2" data-services="vkontakte,facebook,odnoklassniki,moimir,gplus,twitter,linkedin,viber,whatsapp,skype,telegram"></div>
									</div>
								</div>
							</div>
							<div class="main-first-info-presence-wrap">
								<div class="main-first-info__print">
									<span>Печать</span>
								</div>

								<!-- при отсутствии товара к классу main-first-info-presence-wrap-inner добавить order -->
								<div class="main-first-info-presence-wrap-inner">
									<div class="main-first-info">
										<div class="availability">
											<span class="in-stock"></span> В наличии
										</div>
									</div>
									<div class="price">
										<p>22.000 <span class="price_rub">руб.</span></p>
										<span class="price-old-wrap">
											<span class="price_old_rub_val">31.600</span>
											<span class="price_old_rub"> руб.</span>
										</span>
									</div>
									<div class="buy-block shk-item">
										<form class="count-form" method="post" action="[~[+id+]~]" data-trigger="spinner">
											<input type="hidden" name="shk-id" value="[+id+]" />
											<input type="hidden" name="shk-name" value="[+pagetitle+]" />
											<input type="hidden" name="shk-price" value="[+new_price+]" />
											<input type="hidden" name="shk-image" value="[+img_prew_prod+]" />
											<div class="count-block">
												<button type="button" class="count__form-btn" data-spin="down"></button>
												<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
												<button type="button" class="count__form-btn" data-spin="up"></button>
											</div>
											<input type="submit" class="buy-btn" value="В корзину">
										</form>
									</div>
									<a href="#" class="buy-one">Купить в 1 клик</a>
									<a href="#" class="buy-one">Заказать</a>
								</div>
								<div class="main-first-info-presence__description">
									<p>На 2017 год у Samsung очень большие планы. Компании надо реабилитироваться после ситуации с дефектным Note 7.
									</p>
									<span class="presence-description-more">Подробнее</span>
								</div>
								<div class="main-first-info-presence-advantages">
									<div class="main-first-info-presence-advantages__el">
										<div class="main-first-info-presence-advantages__el-img">
											<img src="assets/templates/market/img/ico-card-price.png" alt="">
										</div>
										<div class="main-first-info-presence-advantages__el-info">
											<div class="advantages-title">
												Низкие цены
											</div>
											<div class="advantages-description">
												Найдете дешевле, предоставим скидку
											</div>
										</div>
									</div>
									<div class="main-first-info-presence-advantages__el">
										<div class="main-first-info-presence-advantages__el-img">
											<img src="assets/templates/market/img/ico-card-forklift.png" alt="">
										</div>
										<div class="main-first-info-presence-advantages__el-info">
											<div class="advantages-title">
												Быстрая доставка
											</div>
											<div class="advantages-description">
												Не успеем в срок, доставим бесплатно
											</div>
										</div>
									</div>
									<div class="main-first-info-presence-advantages__el">
										<div class="main-first-info-presence-advantages__el-img">
											<img src="assets/templates/market/img/ico-card-warranty.png" alt="">
										</div>
										<div class="main-first-info-presence-advantages__el-info">
											<div class="advantages-title">
												Качественное исполнение
											</div>
											<div class="advantages-description">
												Продукция проходит 3 этапа проверки качества
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="card-question">
						<div class="card-question_slogan">
							Наши специалисты ответят на любой 
							интересующий вопрос по данному товару
						</div>
						<a href="#callback" data-uk-modal="" class="card-question__btn">задать вопрос</a>
					</div>

					<div class="card-description">
						<h2>Характеристики</h2>

						<div class="card-description__table-wrap hidden">
							<table class="card-description__table">
								<tr>
									<td>
										Операционная система
									</td>
									<td>
										5.8"
									</td>
								</tr>

								<tr>
									<td>
										Размер экрана

										<div class="tooltip-wrap">
											<img src="assets/templates/market/img/question-tooltip.png" alt="">
											<div class="tooltip-content">

											</div>
										</div>
									</td>
									<td>
										Android 7.0 Nougat Android 7.0 Nougat Android 7.0 Nougat
										Android 7.0 Nougat Android 7.0 Nougat
									</td>
								</tr>

								<tr>
									<td>
										Разрешение экрана Разрешение экрана Разрешение экрана Разрешение  экрана
									</td>
									<td>
										1440x2960
									</td>
								</tr>

								<tr>
									<td>
										Оперативная память
									</td>
									<td>
										4 ГБ  (LPDDR4)
									</td>
								</tr>

								<tr>
									<td>
										Флэш-память
									</td>
									<td>
										64 ГБ  (UFS 2.1)
									</td>
								</tr>

								<tr>
									<td>
										Встроенная камера
									</td>
									<td>
										<img src="assets/templates/market/img/no-ico.png" alt="">
									</td>
								</tr>

								<tr>
									<td>
										Количество точек матрицы
									</td>
									<td>
										<img src="assets/templates/market/img/yes-ico.png" alt="">
									</td>
								</tr>

								<tr>
									<td>
										Количество SIM-карт
									</td>
									<td>
										2
									</td>
								</tr>

								<!-- повтор -->
								<tr>
									<td>
										Операционная система
									</td>
									<td>
										5.8"
									</td>
								</tr>

								<tr>
									<td>
										Размер экрана
									</td>
									<td>
										Android 7.0 Nougat Android 7.0 Nougat Android 7.0 Nougat
										Android 7.0 Nougat Android 7.0 Nougat
									</td>
								</tr>

								<tr>
									<td>
										Разрешение экрана Разрешение экрана Разрешение экрана Разрешение  экрана
									</td>
									<td>
										1440x2960
									</td>
								</tr>

								<tr>
									<td>
										Оперативная память
									</td>
									<td>
										4 ГБ  (LPDDR4)
									</td>
								</tr>

								<tr>
									<td>
										Флэш-память
									</td>
									<td>
										64 ГБ  (UFS 2.1)
									</td>
								</tr>

								<tr>
									<td>
										Встроенная камера
									</td>
									<td>
										<img src="assets/templates/market/img/no-ico.png" alt="">
									</td>
								</tr>

								<tr>
									<td>
										Количество точек матрицы
									</td>
									<td>
										<img src="assets/templates/market/img/yes-ico.png" alt="">
									</td>
								</tr>

								<tr>
									<td>
										Количество SIM-карт
									</td>
									<td>
										2
									</td>
								</tr>
							</table>
						</div>

						<div class='table-more'>Подробные характеристики</div>			
					</div>

					<div class="card-documents">
						<h2>Документы</h2>

						<div class="card-documents-wrap">
							<div class="card-documents__el">
								<img src="assets/templates/market/img/card-documents.png" alt="">
								<div class="card-documents__el-inner">
									<a href="#" download>
										Инструкция Инструкция
										Инструкция.Инструкция. Инструкция.
										Инструкция.Инструкция.Инструкция.docx
									</a>
									<div class="card-documents__el-file-size">
										Размер <span>125,45 КБ</span>
									</div>
								</div>
							</div>

							<div class="card-documents__el">
								<img src="assets/templates/market/img/card-documents.png" alt="">
								<div class="card-documents__el-inner">
									<a href="#" download>
										Инструкция.pdf
									</a>
									<div class="card-documents__el-file-size">
										Размер <span>47,1 КБ</span>
									</div>
								</div>
							</div>

							<div class="card-documents__el">
								<img src="assets/templates/market/img/card-documents.png" alt="">
								<div class="card-documents__el-inner">
									<a href="#" download>
										Сертификат.pdf
									</a>
									<div class="card-documents__el-file-size">
										Размер <span>47,1 КБ</span>
									</div>
								</div>
							</div>

						</div>
					</div>

					<div class="card-service">
						<h2>Услуги</h2>

						<ul>
							<li><a href="#">Доставка</a></li>
							<li><a href="#">Установка</a></li>
						</ul>
					</div>

					<div class="card-description-more">
						<h2>Описание</h2>

						<div class="card-description-more__txt hidden">
							<p>На 2017 год у Samsung очень большие планы. Компании надо реабилитироваться после ситуации с дефектным Note 7, а значит — 
								выпускать по-настоящему революционные продукты, после знакомства с которыми пользователь даже вспоминать не захочет 
								о прошлогодних проблемах «планшетофона» со стилусом. Такими устройствами должны стать Galaxy S8 и S8+, которые мы тщательно 
								тестировали в течение недели. </p>
							<p>На 2017 год у Samsung очень большие планы. Компании надо реабилитироваться после ситуации с дефектным Note 7, а значит — 
								выпускать по-настоящему революционные продукты, после знакомства с которыми пользователь даже вспоминать не захочет 
								о прошлогодних проблемах «планшетофона» со стилусом. Такими устройствами должны стать Galaxy S8 и S8+, которые мы тщательно 
								тестировали в течение недели. </p>
							<p>На 2017 год у Samsung очень большие планы. Компании надо реабилитироваться после ситуации с дефектным Note 7, а значит — 
								выпускать по-настоящему революционные продукты, после знакомства с которыми пользователь даже вспоминать не захочет 
								о прошлогодних проблемах «планшетофона» со стилусом. Такими устройствами должны стать Galaxy S8 и S8+, которые мы тщательно 
								тестировали в течение недели. </p>
						</div>
						<span class="card-description-more__btn">Подробнее</span>
					</div>

					<div class="card-gallery">
						<h2>Галерея</h2>

						<div class="card-gallery-slider">
							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>							
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>							
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>							
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>							
							</div>
						</div>

						<div class="card-gallery-slider-pager">
							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>
						</div>
					</div>

					<div class="preview-product">
						<div class="container uk-position-relative">
							<h2>С этим товаром покупают</h2>							

							<div class="more-buy">
								[[DocLister? &id=`similar_items` &parents=`53` &depth=`5` &tvPrefix=`` &tvList=`product_prev,novelty,sale,bestseller,articul,new_price,old_price,img_prew_prod` &tpl=`similar_items_tpl` &orderBy=`menuindex ASC` &total=`20` &noneWrapOuter=`0` &filters=`AND(content:template:in:38,64;tvd:display_on_index:=:1)` &prepare=`class_order_add`]]
							</div>
							<div class="slider-controls">
								<div class="customNextBtn"><img src="assets/templates/market/img/sprite/arr-slider-next.png" alt=""/></div>
								<div class="customPrevBtn"><img src="assets/templates/market/img/sprite/arr-slider-prev.png" alt=""/></div>
							</div>
						</div>
					</div>

					<div class="our-specialists">
						<h2>Наши специалисты</h2>

						<div class="our-specialists-wrap">
							<div class="our-specialists-el">
								<div class="our-specialists-wrap-inner">
									<div class="our-specialists__img">
										<img src="assets/templates/market/img/spec1.jpg" alt="">
									</div>
									<div class="our-specialists-info">
										<div class="our-specialists__name">
											Шленковский<br> Александр
										</div>
										<div class="our-specialists__post">
											Начальник отдела продаж
										</div>
										<div class="our-specialists__mail">
											<img src="assets/templates/market/img/spec-mail.png" alt="">
											sales_alexander@market.by
										</div>
										<div class="our-specialists__phone">
											<img src="assets/templates/market/img/spec-phone.png" alt="">
											+375 (44) 547-22-38
										</div>
									</div>
								</div>
							</div>

							<div class="our-specialists-el">
								<div class="our-specialists-wrap-inner">
									<div class="our-specialists__img">
										<img src="assets/templates/market/img/spec2.jpg" alt="">
									</div>
									<div class="our-specialists-info">
										<div class="our-specialists__name">
											Шленковский<br> Александр Валентинович
										</div>
										<div class="our-specialists__post">
											Начальник отдела продаж
										</div>
										<div class="our-specialists__mail">
											<img src="assets/templates/market/img/spec-mail.png" alt="">
											sales_alexander@market.by
										</div>
										<div class="our-specialists__phone">
											<img src="assets/templates/market/img/spec-phone.png" alt="">
											+375 (44) 547-22-38
										</div>
									</div>
								</div>
							</div>

							<div class="our-specialists-el">
								<div class="our-specialists-wrap-inner">
									<div class="our-specialists__img">
										<img src="assets/templates/market/img/spec3.jpg" alt="">
									</div>
									<div class="our-specialists-info">
										<div class="our-specialists__name">
											Шленковский<br> Александр
										</div>
										<div class="our-specialists__mail">
											<img src="assets/templates/market/img/spec-mail.png" alt="">
											sales_alexander@market.by
										</div>
										<div class="our-specialists__phone">
											<img src="assets/templates/market/img/spec-phone.png" alt="">
											+375 (44) 547-22-38
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<div class="completed-projects">
						<h2>Выполненные проекты</h2>

						<div class="completed-projects-slider">

							<div class="completed-projects-slider-el-wrap">
								<div class="completed-projects-slider-el">
									<div class="completed-projects-slider__img">
										<img src="assets/templates/market/img/projects-completed.jpg" alt="">
									</div>
									<div class="completed-projects-slider__info">
										<div class="completed-projects-slider__info-title">
											<a href="#">
												<span>Разработка 3D-чертежа ТЦ «Галерея минск»</span>
											</a>
										</div>
										<div class="completed-projects-slider__info-el">
											<p><span>Задача:</span> Проектрировани чертежа будущего торгового центра</p> 
											<p><span>Площадь застройки: </span> 200 м<sup>2</sup></p>
											<a href="#">Подробнее</a>
										</div>
									</div>
								</div>
							</div>

							<div class="completed-projects-slider-el-wrap">
								<div class="completed-projects-slider-el">
									<div class="completed-projects-slider__img">
										<img src="assets/templates/market/img/projects-completed.jpg" alt="">
									</div>
									<div class="completed-projects-slider__info">
										<div class="completed-projects-slider__info-title">
											<a href="#">
												<span>Разработка 3D-чертежа ТЦ «Галерея минск»</span>
											</a>
										</div>
										<div class="completed-projects-slider__info-el">
											<p><span>Задача:</span> Проектрировани чертежа будущего торгового центра</p> 
											<p><span>Площадь застройки: </span> 200 м<sup>2</sup></p>
											<a href="#">Подробнее</a>
										</div>
									</div>
								</div>
							</div>

							<div class="completed-projects-slider-el-wrap">
								<div class="completed-projects-slider-el">
									<div class="completed-projects-slider__img">
										<img src="assets/templates/market/img/projects-completed.jpg" alt="">
									</div>
									<div class="completed-projects-slider__info">
										<div class="completed-projects-slider__info-title">
											<a href="#">
												<span>Разработка 3D-чертежа ТЦ «Галерея минск»</span>
											</a>
										</div>
										<div class="completed-projects-slider__info-el">
											<p><span>Задача:</span> Проектрировани чертежа будущего торгового центра</p> 
											<p><span>Площадь застройки: </span> 200 м<sup>2</sup></p>
											<a href="#">Подробнее</a>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<div class="card-schedule">
						<h2>Расписание</h2>

						<div class="card-schedule-wrap">
							<iframe src="https://calendar.google.com/calendar/embed?showTitle=0&amp;mode=WEEK&amp;height=580&amp;wkst=2&amp;bgcolor=%23FFFFFF&amp;src=mipfjb1b4js9uhiunjh8b88pj4%40group.calendar.google.com&amp;color=%23711616&amp;ctz=Europe%2FMinsk" style="border-width:0" width="726" height="580" frameborder="0" scrolling="no"></iframe>
						</div>
					</div>

					<div class="card-services">
						<h2>Услуги</h2>

						<div class="completed-project-inner card-services-slider">
							<!--  -->
							<div class="completed-project-item-wrap">
								<div class="completed-project-item">
									<a href="#">
										<div class="completed-project__img">
											<img src="assets/templates/market/img/progects1.jpg" alt="">
										</div>
										<div class="completed-project-content">
											<div class="completed-project-content-wrap">
												<div class="completed-project-content__title">
													Замена проводки Тургенева
													<p>
														Группа компаний «Электромастер» предоставляет 
														все виды услуг по проектированию, монтажу...
													</p>
													<div class="completed-project__more">Подробнее</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<!--  -->
							<div class="completed-project-item-wrap">
								<div class="completed-project-item">
									<a href="#">
										<div class="completed-project__img">
											<img src="assets/templates/market/img/progects2.jpg" alt="">
										</div>
										<div class="completed-project-content">
											<div class="completed-project-content-wrap">
												<div class="completed-project-content__title">
													Замена проводки Тургенева Вторая строка
													<p>
														Группа компаний «Электромастер» предоставляет 
														все виды услуг по проектированию, монтажу...
													</p>
													<div class="completed-project__more">Подробнее</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<!--  -->
							<div class="completed-project-item-wrap">
								<div class="completed-project-item">
									<a href="#">
										<div class="completed-project__img">
											<img src="assets/templates/market/img/progects1.jpg" alt="">
										</div>
										<div class="completed-project-content">
											<div class="completed-project-content-wrap">
												<div class="completed-project-content__title">
													Замена проводки Тургенева
													<p>
														Группа компаний «Электромастер» предоставляет 
														все виды услуг по проектированию, монтажу...
													</p>
													<div class="completed-project__more">Подробнее</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<!--  -->
							<div class="completed-project-item-wrap">
								<div class="completed-project-item">
									<a href="#">
										<div class="completed-project__img">
											<img src="assets/templates/market/img/progects1.jpg" alt="">
										</div>
										<div class="completed-project-content">
											<div class="completed-project-content-wrap">
												<div class="completed-project-content__title">
													Замена проводки Тургенева
													<p>
														Группа компаний «Электромастер» предоставляет 
														все виды услуг по проектированию, монтажу...
													</p>
													<div class="completed-project__more">Подробнее</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

						</div>
					</div>


					<div class="personal-manager">
						<div class="personal-manager__img">
							<img src="assets/templates/market/img/personal-manager.jpg" alt="">
						</div>
						<div class="personal-manager__info">
							<div class="personal-manager__info-title">Ваш личный менеджер</div>
							<div class="personal-manager__name">Валерия Гутко</div>
						</div>
						<div class="personal-manager__phone">
							<img src="assets/templates/market/img/manager-phone.png" alt="">
							+375 (29) 708-22-47 (МТС); 
						</div>
						<div class="personal-manager__mail">
							<img src="assets/templates/market/img/manager-mail.png" alt="">
							<span>valery_manager@market.by</span>
						</div>
					</div>


					<div class="card-reviews">
						<h2>Отзывы</h2>

						<div class="card-reviews-el">
							<div class="card-reviews-el-header">
								<div class="card-reviews-el-header-info">
									<div class="card-reviews-el-header__name">
										Николай Василевский
									</div>
									<div class="card-reviews-el-header__post">
										Генеральный директор «ОАО “ГазПром”»
									</div>
								</div>
								<div class="card-reviews-el-header-soc">
									<a href="#">
										<img src="assets/templates/market/img/reviews-vk.svg" alt="">
									</a>
									<a href="#">
										<img src="assets/templates/market/img/reviews-facebook.svg" alt="">
									</a>
									<a href="#">
										<img src="assets/templates/market/img/reviews-ok.svg" alt="">
									</a>
									<a href="#">
										<img src="assets/templates/market/img/reviews-twitter.svg" alt="">
									</a>
								</div>
							</div>
							<div class="card-reviews-el-inner">
								<div class="card-reviews-el-inner__txt">
									<p>
										Вот и до меня добрались эти чудо-резиночки. В моем отзыве речь пойдет только об оригиналах.
										Я не стала покупать китайские подделки, так как часть резиночек предназначена на символические подарки.
										А подделки дарить считаю вообще не комильфо 
									</p>
								</div>
								<div class="card-reviews-el-inner-btns">
									<a href="#" class="card-reviews-el__more"><span>Читать подробнее...</span></a>
									<a href="assets/templates/market/img/personal-manager.jpg" class="fancyshow">
										<img src="assets/templates/market/img/reviews-document.svg" alt="">
										<span>Смотреть оригинал</span>
									</a>
								</div>
							</div>
						</div>

						<div class="card-reviews-el">
							<div class="card-reviews-el-header">
								<div class="card-reviews-el-header-info">
									<div class="card-reviews-el-header__name">
										Николай Василевский
									</div>
								</div>
							</div>
							<div class="card-reviews-el-inner">
								<div class="card-reviews-el-inner__txt">
									<p>
										Вот и до меня добрались эти чудо-резиночки. В моем отзыве речь пойдет только об оригиналах.
										Я не стала покупать китайские подделки, так как часть резиночек предназначена на символические подарки.
										А подделки дарить считаю вообще не комильфо 
									</p>
								</div>
								<div class="card-reviews-el-inner-btns">
									<a href="#" class="card-reviews-el__more"><span>Читать подробнее...</span></a>
								</div>
							</div>
						</div>

					</div>


					<a href="#" class="back-catalog">
						<svg id="back-catalog__svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 35 35">
							<circle class="back-catalog__svg-cls-1" cx="17.5" cy="17.5" r="16.5" />
							<polyline class="back-catalog__svg-cls-2" points="20.25 23 14.75 17.5 20.25 12" />
						</svg>
						В каталог
					</a>

				</div>
			</div>
		</div>

		<div class="container">
			<div class="watched">
				<h2>Вы смотрели:</h2>

				<div class="watched-wrap">
					<div class="watched-el">
						<a href="#">
							<img src="assets/templates/market/img/w1.jpg" alt="">
						</a>
						<div class="watched-el__tooltip">
							Default tooltip<br>
							Вторая строка
						</div>
					</div>

					<div class="watched-el">
						<a href="#">
							<img src="assets/templates/market/img/w2.jpg" alt="">
						</a>
						<div class="watched-el__tooltip">
							Default tooltip<br>
							Вторая строка
						</div>
					</div>

					<div class="watched-el">
						<a href="#">
							<img src="assets/templates/market/img/w3.jpg" alt="">
						</a>
						<div class="watched-el__tooltip">
							Default tooltip 2<br>
							Вторая строка
						</div>
					</div>

					<div class="watched-el">
						<a href="#">
							<img src="assets/templates/market/img/w4.jpg" alt="">
						</a>
						<div class="watched-el__tooltip">
							Default tooltip 3<br>
							Вторая строка
						</div>
					</div>

					<div class="watched-el">
						<a href="#">
							<img src="assets/templates/market/img/w5.jpg" alt="">
						</a>
						<div class="watched-el__tooltip">
							Default tooltip 4<br>
							Вторая строка
						</div>
					</div>

					<div class="watched-el">

					</div>

					<div class="watched-el">

					</div>

					<div class="watched-el">

					</div>

					<div class="watched-el">

					</div>

					<div class="watched-el">

					</div>

					<div class="watched-el">

					</div>

					<div class="watched-el">

					</div>

					<div class="watched-el">

					</div>

					<div class="watched-el">

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
		<script src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
		<script src="//yastatic.net/share2/share.js"></script>
	</body>

</html>
