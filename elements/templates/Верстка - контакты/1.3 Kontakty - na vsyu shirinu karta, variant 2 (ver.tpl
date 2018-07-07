name:1.3 Контакты - на всю ширину карта, вариант 2 (вер
description:Contacts
======
<!DOCTYPE html>
<html lang="ru">
	<head>
		{{head}}
		<!--maps-->
		<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
	</head>
	<body>
		<header class="header [+noshadow_class+]">
			{{header}}
		</header>
		
		<!-- --@ корзина по ховеру под корзиной в header @-- -->
		{{basket_under_header}} [[breadcrumbs_select_load]]
		
		<div class="second-page">
			<div class="uk-grid">

				<div class="primary-block uk-width-1-1">
					<div class="container">
						[+breadcrumbs_default+]
						
						[*content*]
					</div>

					<script type="text/javascript">
						ymaps.ready(init);
						var myMap, 
							myPlacemark;
						var Vacansia_map,
							vac_Placemark;
						function init(){ 
							myMap = new ymaps.Map("map", {
								center: [53.902230,27.556422],
								zoom: 5,
								controls: []
							}),
								clusterer = new ymaps.Clusterer({
								preset: 'islands#redClusterIcons',
								groupByCoordinates: false
							}),

								geoObjects = [];
							[[ddGetMultipleField? &inputString_docField=`map_contacts` &rowTpl=`map_contacts_tpl`]]

							  clusterer.add(geoObjects);
							  myMap.geoObjects.add(clusterer);			

							  myMap.setBounds(clusterer.getBounds(), {
							  checkZoomRange: true
							  });
							  myMap.behaviors.disable("scrollZoom");
							  }
					</script>
					<div class="contacts-1-3">


						<div class="info-map-wrap">
							<div class="container info-map-container">
								<div class="contact-info-wrap">
									<div class="contact-info-el">
										<img src="assets/templates/market/img/update/contact-phone.svg" class="contact-info__img" alt="">

										<div>
											<div class="contact-info__title">Телефоны:</div>

											<div class="contact-info__inner">
												<a href="tel:+70000000001">+7 (000) 000-00-01</a>
												<a href="tel:+70000000001">+7 (000) 000-00-02</a>
												<a href="tel:+70000000001">+7 (000) 000-00-03</a>
												<a href="tel:+70000000001">+7 (000) 000-00-04</a>
											</div>
											<div class="contact-info-more-wrap">
												<div class="contact-info__more">Показать все телефоны</div>
												<div class="contact-info__more-hide">
													<ul>
														<li><a href="tel:+70000000001">+7 (000) 000-00-05</a></li>
														<li><a href="tel:+70000000001">+7 (000) 000-00-06</a></li>
														<li><a href="tel:+70000000001">+7 (000) 000-00-07</a></li>
														<li><a href="tel:+70000000001">+7 (000) 000-00-08</a></li>
													</ul>
												</div>

											</div>
										</div>
									</div>

									<div class="contact-info-el">
										<img src="assets/templates/market/img/update/contact-loc.svg" class="contact-info__img" alt="">

										<div>
											<div class="contact-info__title">Адрес офиса:</div>

											<div class="contact-info__inner">
												г. Минск, пр-т Независимости, д. 122, офис 313
											</div>
											<div class="contact-info-more-wrap">
												<div class="contact-info__more">Показать все адреса</div>
												<div class="contact-info__more-hide">
													<ul>
														<li>
															<span>Адрес магазина:</span>
															<p>г. Минск, пр-т Победителей, д. 24, ТЦ «Lux»</p>
														</li>
														<li>
															<span>Адрес еще одного магазина:</span>
															<p>г. Минск, ул. Некрасова, д. 14, павильон 422</p>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>

									<div class="contact-info-el">
										<img src="assets/templates/market/img/update/contact-mail.svg" class="contact-info__img" alt="">

										<div>
											<div class="contact-info__title">Электронная почта:</div>

											<div class="contact-info__inner">
												sales@market.webcompany.by
											</div>									
										</div>									
									</div>

								</div>
							</div>
							<div class="contact-map full-width-map">
								<div id="map"></div>
							</div>
						</div>

					</div>

					<div class="container">					
						<div class="contact-page contacts-1-3">

							<!--@- наши дилеры -@-->
							<div class="contact-page-dealers">
								<h2>Наши дилеры</h2>
								<p>
									Менеджеры компании с радостью ответят на ваши вопросы и произведут расчет стоимости услуг и подготовят индивидуальное коммерческое предложение. Менеджеры компании с радостью ответят на ваши вопросы и произведут расчет стоимости услуг и подготовят индивидуальное коммерческое предложение.
								</p>
								<div class="contact-dealers-wrap">
									<div class="contact-dealers-region">
										<h3>
											Минская область
										</h3>
										<div class="contact-dealers-region-wrap">
											<div class="contact-dealers-region-el">
												<div class="contact-dealers-region__img">
													<img src="assets/templates/market/img/update/dealers.jpg" alt="">
												</div>
												<div class="contact-dealers-region__title">
													Группа «РусГидро» Длинное название в три строчки организация
												</div>
												<div class="contact-dealers-region__address">
													<span>
														<span>127006, Москва,<br> ул. Малая Дмитровка, д. 7 </span>
													</span>
												</div>
												<div class="contact-dealers-region__phone">
													8 (800) 333-8000
												</div>
												<div class="contact-dealers-region__schedule">
													8:00-21:00;Пн-Пт: 8:00-21:00;Сб-Вс: 10:00-20:00
												</div>
											</div>
											<div class="contact-dealers-region-el">
												<div class="contact-dealers-region__img">
													<img src="assets/templates/market/img/update/dealers.jpg" alt="">
												</div>
												<div class="contact-dealers-region__title">
													Группа «РусГидро»
												</div>
												<div class="contact-dealers-region__address">
													<span>
														<span>127006, Москва,<br> ул. Малая Дмитровка, д. 7 </span>
													</span>
												</div>
												<div class="contact-dealers-region__phone">
													8 (800) 333-8000
												</div>
												<div class="contact-dealers-region__schedule">
													8:00-21:00
												</div>
											</div>
											<div class="contact-dealers-region-el">
												<div class="contact-dealers-region__img">
													<img src="assets/templates/market/img/update/dealers.jpg" alt="">
												</div>
												<div class="contact-dealers-region__title">
													Группа «РусГидро» Длинное название в три строчки организация
												</div>
												<div class="contact-dealers-region__address">
													<span>
														<span>127006, Москва,<br> ул. Малая Дмитровка, д. 7 </span>
													</span>
												</div>
												<div class="contact-dealers-region__phone">
													8 (800) 333-8000
												</div>
												<div class="contact-dealers-region__schedule">
													8:00-21:00;Пн-Пт: 8:00-21:00;Сб-Вс: 10:00-20:00
												</div>
											</div>
											<div class="contact-dealers-region-el">
												<div class="contact-dealers-region__img">
													<img src="assets/templates/market/img/update/dealers.jpg" alt="">
												</div>
												<div class="contact-dealers-region__title">
													Группа «РусГидро»
												</div>
												<div class="contact-dealers-region__address">
													<span>
														<span>127006, Москва,<br> ул. Малая Дмитровка, д. 7 </span>
													</span>
												</div>
												<div class="contact-dealers-region__phone">
													8 (800) 333-8000
												</div>
												<div class="contact-dealers-region__schedule">
													8:00-21:00
												</div>
											</div>
											<div class="contact-dealers-region-el">
												<div class="contact-dealers-region__img">
													<img src="assets/templates/market/img/update/dealers.jpg" alt="">
												</div>
												<div class="contact-dealers-region__title">
													Группа «РусГидро»
												</div>
												<div class="contact-dealers-region__address">
													<span>
														<span>127006, Москва,<br> ул. Малая Дмитровка, д. 7 </span>
													</span>
												</div>
												<div class="contact-dealers-region__phone">
													8 (800) 333-8000
												</div>
												<div class="contact-dealers-region__schedule">
													8:00-21:00
												</div>
											</div>
										</div>
									</div>
									<div class="contact-dealers-region">
										<h3>
											Брестская область
										</h3>
										<div class="contact-dealers-region-wrap">
											<div class="contact-dealers-region-el">
												<div class="contact-dealers-region__img">
													<img src="assets/templates/market/img/update/dealers.jpg" alt="">
												</div>
												<div class="contact-dealers-region__title">
													Группа «РусГидро»
												</div>
												<div class="contact-dealers-region__address">
													<span>
														<span>127006, Москва,<br> ул. Малая Дмитровка, д. 7 </span>
													</span>
												</div>
												<div class="contact-dealers-region__phone">
													8 (800) 333-8000
												</div>
												<div class="contact-dealers-region__schedule">
													8:00-21:00
												</div>
											</div>
											<div class="contact-dealers-region-el">
												<div class="contact-dealers-region__img">
													<img src="assets/templates/market/img/update/dealers.jpg" alt="">
												</div>
												<div class="contact-dealers-region__title">
													Группа «РусГидро»
												</div>
												<div class="contact-dealers-region__address">
													<span>
														<span>127006, Москва,<br> ул. Малая Дмитровка, д. 7 </span>
													</span>
												</div>
												<div class="contact-dealers-region__phone">
													8 (800) 333-8000
												</div>
												<div class="contact-dealers-region__schedule">
													8:00-21:00
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="separator-line"></div>

							<!--@- обратная связь -@-->
							<div class="contact-page-feedback">
								<h2>Обратная связь</h2>

								<p>
									Менеджеры компании с радостью ответят на ваши вопросы и произведут расчет стоимости услуг и подготовят индивидуальное коммерческое предложение. Менеджеры компании
									с радостью ответят на ваши вопросы и произведут расчет стоимости услуг и подготовят индивидуальное коммерческое предложение.
								</p>

								<div class="contact-page-feedback-form">
									<form action="" method="post" class="products_form">
										<div class="feedback-form-wrap">
											<div class="field-half-wrap">

												<div class="line wrapper">
													<div class="value">
														<input name="fio" type="text" placeholder="" value="" class="js_custom-input">
														<div class="placeholder_custom active">Ф.И.О.<span>*</span></div>
													</div>
												</div>

												<div class="line wrapper">
													<div class="value">
														<input name="phone" type="text" placeholder="" value="" class="js_custom-input">
														<div class="placeholder_custom active">Телефон<span>*</span></div>
													</div>
												</div>

												<div class="line wrapper">
													<div class="value">
														<input name="mail" type="text" placeholder="E-mail" value="">
													</div>
												</div>

												<div class="line wrapper">
													<div class="value">
														<input name="service" type="text" placeholder="Интересующий товар/услуга" value="">
													</div>
												</div>
											</div>

											<div class="field-half-wrap">
												<textarea class="contact-page-feedback__textarea" name="" class="js_custom-input"></textarea>
												<div class="placeholder_custom active">Сообщение<span>*</span></div>
											</div>
										</div>
										<div class="feedback-form-footer">
											<div class="feedback-form-footer__check">
												<div>
													<label class="checkbox">
														<input type="checkbox" name=""> Я согласен на <a href="#">обработку персональных данных</a>
													</label>
												</div>
												<div class="feedback__info-field">
													<span>*</span> - обязательные поля
												</div>
											</div>
											<input type="submit" class="feedback-form__submit" value="Отправить">
										</div>

									</form>
								</div>
							</div>

							<div class="separator-line"></div>

							<!--@- Наши специалисты -@-->
							<div class="our-specialists">
								<h4>Отдел мененжмента</h4>

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

								</div>
							</div>

							<!--@- Наши специалисты -@-->
							<div class="our-specialists">
								<h4>Бухгалтерия</h4>

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

								</div>
							</div>

							<div class="separator-line"></div>

							<!--@- реквизиты -@-->
							<div class="contacts-details">
								<h2>Реквизиты</h2>
								<table class="card-description__table">
									<tbody>
										<tr>
											<td>
												Полное наименование:
											</td>
											<td>
												Общество с ограниченной ответственностью «Корпоративная компания»
											</td>
										</tr><tr>
										<td>
											Сокращенное наименование:
										</td>
										<td>
											ООО «Корпоративная компания»
										</td>
										</tr><tr>
										<td>
											ИНН/КПП:
										</td>
										<td>
											7999001099/999707007
										</td>
										</tr><tr>
										<td>
											ОРГН:
										</td>
										<td>
											9911001123456
										</td>
										</tr><tr>
										<td>
											Юридический адрес:
										</td>
										<td>
											г. Москва, ул. Пушкина, д. 195, офис 1034
										</td>
										</tr><tr>
										<td>
											Фактический адрес:
										</td>
										<td>
											г. Москва, ул. Пушкина, д. 195, офис 1034
										</td>
										</tr><tr>
										<td>
											Телефон, факс:
										</td>
										<td>
											+ (999) 777-00-01
										</td>
										</tr><tr>
										<td>
											Электронная почта:
										</td>
										<td>
											<a href="mailto:mymail@superservis.ru">mymail@superservis.ru</a>
										</td>
										</tr><tr>
										<td>
											Сайт:
										</td>
										<td>
											http://marketplace.1c-bitrix.ru
										</td>
										</tr><tr>
										<td>
											Банковские реквизиты:
										</td>
										<td>
											Банковские реквизиты: БИК 041234567<br>
											Р/с №998794208800911122<br>
											Кор/ счет 9050535050000000123
										</td>
										</tr>
									</tbody></table>
							</div>

						</div>
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