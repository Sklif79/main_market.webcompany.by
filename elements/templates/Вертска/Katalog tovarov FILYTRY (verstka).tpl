name:Каталог товаров ФИЛЬТРЫ (верстка)
description:
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
				<div class="left-bar uk-width-1-1 uk-width-medium-1-4 uk-hidden-small">

					<!-- -@ фильтр товаров в сайдбаре @- -->
					<form name="" action="" method="POST" class="filter">
						<!-- -@ класс no-hover для блоков,
которые не должны менять background по ховеру @- -->
						<div class="filter-section filter-form-title">
							<h4>Фильтр по параметрам</h4>
						</div>

						<div class="filter-section-wrapper">
							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Цена, руб.</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<div class="filter-section__item">
									<div class="filter-range">
										<div class="filter-range__data">
											<label>
												<span class="filter-range__txt">от</span>
												<!-- кнопки управления должны называться так:
id-ползунка__0 и id-ползунка__1 -->
												<input type="text" id="filter-range__0" class="filter__range">
											</label>
											<label>
												<span class="filter-range__txt">до</span>
												<input type="text" id="filter-range__1" class="filter__range">
											</label>
										</div>
										<div id="filter-range"></div>
									</div>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Цена, руб.</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<div class="filter-section__item">
									<div class="filter-range">
										<div class="filter-range__data">
											<label>
												<span class="filter-range__txt">от</span>
												<input type="text" id="filter-range-2__0" class="filter__range">
											</label>
											<label>
												<span class="filter-range__txt">до</span>
												<input type="text" id="filter-range-2__1" class="filter__range">
											</label>
										</div>
										<div id="filter-range-2"></div>
									</div>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Бренд</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<!-- добавить класс js-spoiler для блоков где нужны спойлеры для скрытия элементов,
если их больше 5, появится кнопка "показать еще" -->
								<div class="filter-section__item js-spoiler">
									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" checked name="">Mersedes Доступные для самовывоза из города
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" disabled name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" disabled name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" disabled name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Тип</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<!-- добавить класс js-spoiler для блоков где нужны спойлеры для скрытия элементов,
если их больше 5, появится кнопка "показать еще" -->
								<div class="filter-section__item js-spoiler">
									<div class="label-field">
										<label class="radio">
											<input type="radio" name="radio-left" checked>Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="radio">
											<input type="radio" name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="radio">
											<input type="radio" name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="radio">
											<input type="radio" name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="radio">
											<input type="radio" name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="radio">
											<input type="radio" name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>
									<div class="label-field">
										<label class="radio">
											<input type="radio" disabled name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="radio">
											<input type="radio" disabled name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Цвет</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<div class="filter-section__item">
									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="">
										<img src="assets/templates/market/img/update/inputs-color/1.png" alt="">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="">
										<img src="assets/templates/market/img/update/inputs-color/2.png" alt="">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" disabled name="">
										<img src="assets/templates/market/img/update/inputs-color/3.png" alt="">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" disabled name="">
										<img src="assets/templates/market/img/update/inputs-color/4.png" alt="">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="">
										<img src="assets/templates/market/img/update/inputs-color/5.png" alt="">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="">
										<img src="assets/templates/market/img/update/inputs-color/6.png" alt="">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="">
										<img src="assets/templates/market/img/update/inputs-color/7.png" alt="">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="">
										<img src="assets/templates/market/img/update/inputs-color/8.png" alt="">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="">
										<img src="assets/templates/market/img/update/inputs-color/9.png" alt="">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="">
										<img src="assets/templates/market/img/update/inputs-color/10.png" alt="">
									</label>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Размер</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<div class="filter-section__item">
									<label class="checkbox select-size">
										<input type="checkbox">xs
									</label>

									<label class="checkbox select-size">
										<input type="checkbox">s
									</label>

									<label class="checkbox select-size">
										<input type="checkbox">m
									</label>

									<label class="checkbox select-size">
										<input type="checkbox">l
									</label>

									<label class="checkbox select-size">
										<input type="checkbox" disabled>xl
									</label>

									<label class="checkbox select-size">
										<input type="checkbox" disabled>xxl
									</label>

									<label class="checkbox select-size">
										<input type="checkbox" disabled>xxl
									</label>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Бренд</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<div class="filter-section__item">
									<select id="" class="js-select-brand filter-select" multiple="multiple"  placeholder="Выберите бренды" name="select-brand">
										<option selected value="Все">Все</option>
										<option value="Adidas">Adidas</option>
										<option value="Apple">Apple</option>
										<option value="BBS">BBS</option>
										<option value="Cube">Cube</option>
										<option value="Cannondale длинное название
													   в две строки">Cannondale длинное название
											в две строки
										</option>
										<option value="Cube">Cube</option>
										<option value="Все">Все</option>
										<option value="Adidas">Adidas</option>
										<option value="Apple">Apple</option>
										<option value="BBS">BBS</option>
									</select>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Бренд</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<div class="filter-section__item">
									<select id="" class="js-select-brand filter-select" name="select-brand">
										<option selected value="Все">Все</option>
										<option value="Adidas">Adidas</option>
										<option value="Apple">Apple</option>
										<option value="BBS">BBS</option>
										<option value="Cube">Cube</option>
										<option value="Cannondale длинное название
													   в две строки">Cannondale длинное название
											в две строки
										</option>
										<option value="Cube">Cube</option>
										<option value="Все">Все</option>
										<option value="Adidas">Adidas</option>
										<option value="Apple">Apple</option>
										<option value="BBS">BBS</option>
									</select>
								</div>
							</div>

							<div class="filter-section">
								<label class="checkbox">
									<input type="checkbox" name="">В наличии
								</label>
							</div>

							<div class="filter-section no-hover filter-submit-section">
								<!-- для появления блока показать,
добавить класс show -->
								<div class="filter-selected">
									Выбрано <span class="filter-selected__count">5</span>
									<div class="filter-selected__show">
										Показать
									</div>
								</div>
								<input type="submit" value="Применить">
								<label class="filter-reset">
									<input type="reset" value="Очистить">
								</label>
							</div>
						</div>
					</form>
				</div>


				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]

					<!-- -@ фильтр товаров в области контента @- -->
					<form name="" action="" method="POST" class="filter">
						<!-- -@ класс no-hover для блоков,
которые не должны менять background по ховеру @- -->
						<div class="filter-section filter-form-title">
							<h4>Фильтр по параметрам</h4>
						</div>

						<div class="filter-section-wrapper">
							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Цена, руб.</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<div class="filter-section__item">
									<div class="filter-range">
										<div class="filter-range__data">
											<label>
												<span class="filter-range__txt">от</span>
												<input type="text" id="filter-range-content__0" class="filter__range">
											</label>
											<label>
												<span class="filter-range__txt">до</span>
												<input type="text" id="filter-range-content__1" class="filter__range">
											</label>
										</div>
										<div id="filter-range-content"></div>
									</div>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Бренд</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<!-- добавить класс js-spoiler для блоков где нужны спойлеры для скрытия элементов,
если их больше 5, появится кнопка "показать еще" -->
								<div class="filter-section__item js-spoiler">
									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" checked name="">Mersedes Доступные для самовывоза из города
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" disabled name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" disabled name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="checkbox">
											<input type="checkbox" disabled name="">Mersedes
											<span class="filter__count">(87)</span>
										</label>
									</div>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Тип</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<!-- добавить класс js-spoiler для блоков где нужны спойлеры для скрытия элементов,
если их больше 5, появится кнопка "показать еще" -->
								<div class="filter-section__item js-spoiler">
									<div class="label-field">
										<label class="radio">
											<input type="radio" name="radio-left" checked>Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="radio">
											<input type="radio" name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="radio">
											<input type="radio" name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="radio">
											<input type="radio" name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="radio">
											<input type="radio" name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="radio">
											<input type="radio" name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>
									<div class="label-field">
										<label class="radio">
											<input type="radio" disabled name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>

									<div class="label-field">
										<label class="radio">
											<input type="radio" disabled name="radio-left">Adidas
											<span class="filter__count">(87)</span>
										</label>
									</div>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Цвет</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<div class="filter-section__item">
									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="" value="#1C87D7">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="" value="#00A05E">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" disabled name="" value="#F24841">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" disabled name="" value="#F879B0">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="" value="#EFBB2F">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="" value="#68CEF8">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="" value="#47E589">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="" value="#213869">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="" value="#BFEDFC">
									</label>

									<label class="select-color checkbox">
										<input class="input-color" type="checkbox" name="" value="#976D49">
									</label>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Размер</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<div class="filter-section__item">
									<label class="checkbox select-size">
										<input type="checkbox">xs
									</label>

									<label class="checkbox select-size">
										<input type="checkbox">s
									</label>

									<label class="checkbox select-size">
										<input type="checkbox">m
									</label>

									<label class="checkbox select-size">
										<input type="checkbox">l
									</label>

									<label class="checkbox select-size">
										<input type="checkbox" disabled>xl
									</label>

									<label class="checkbox select-size">
										<input type="checkbox" disabled>xxl
									</label>

									<label class="checkbox select-size">
										<input type="checkbox" disabled>xxl
									</label>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Бренд</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<div class="filter-section__item">
									<select id="" class="js-select-brand filter-select" name="select-brand">
										<option value="Все">Все</option>
										<option value="Adidas">Adidas</option>
										<option value="Apple">Apple</option>
										<option value="BBS">BBS</option>
										<option value="Cube">Cube</option>
										<option value="Cannondale длинное название
													   в две строки">Cannondale длинное название
											в две строки
										</option>
										<option value="Cube">Cube</option>
										<option value="Все">Все</option>
										<option value="Adidas">Adidas</option>
										<option value="Apple">Apple</option>
										<option value="BBS">BBS</option>
									</select>
								</div>
							</div>

							<div class="filter-section">
								<div class="filter__header">
									<span class="filter__title">Бренд с мультиселектом</span>

									<div class="tooltip-wrap">
										<img src="assets/templates/market/img/update/question-table.svg" alt="">
										<div class="tooltip-content">
											Дополнительное описание Блока
										</div>
									</div>

									<span class="filter-arrow uk-icon-angle-up"></span>
								</div>

								<div class="filter-section__item">
									<select id="" class="js-multiselect filter-select" placeholder="Выберите бренды" multiple="multiple" name="select-brand">
										<option value="Все">Все</option>
										<option value="Adidas" disabled>Adidas</option>
										<option value="Apple">Apple</option>
										<option value="BBS">BBS</option>
										<option value="Cube">Cube</option>
										<option value="Cannondale длинное название
													   в две строки">Cannondale длинное название
											в две строки
										</option>
										<option value="Cube">Cube</option>
										<option value="Все">Все</option>
										<option value="Adidas">Adidas</option>
										<option value="Apple">Apple</option>
										<option value="BBS">BBS</option>
									</select>
								</div>
							</div>

							<div class="filter-section">
								<label class="checkbox">
									<input type="checkbox" name="">В наличии
								</label>
							</div>

							<div class="filter-section no-hover">
								<!-- для появления блока показать,
добавить класс show -->
								<div class="filter-selected show">
									Выбрано <span class="filter-selected__count">5</span>
									<div class="filter-selected__show">
										Показать
									</div>
								</div>
								<input type="submit" value="Применить">
								<label class="filter-reset">
									<input type="reset" value="Очистить">
								</label>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<footer class="footer [+footer_add_class+]">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_forms_block}}
		</div>

		<script>
			$(document).ready(function () {

				window.sliderAside = new noUiSliderInit('filter-range', 100, 500, 10, [150, 350]);
				window.sliderAside2 = new noUiSliderInit('filter-range-2', 1000, 5000, 100, [1500, 3500]);
				window.sliderContent = new noUiSliderInit('filter-range-content', 400, 5000, 10, [750, 3050]);

				//получение текущих значений ползунков
				//        console.log(sliderAside.getData());
				//        console.log(sliderContent.getData());

				//установка значений
				//        sliderAside.setData([500, 1000]);

			});


		</script>
	</body>
</html>