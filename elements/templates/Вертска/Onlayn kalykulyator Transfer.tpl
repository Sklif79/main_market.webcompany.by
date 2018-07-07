name:Онлайн калькулятор Трансфер
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
				{{left_bar}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					<div>
						[*content*]
					</div>

					<form class="form-transfer" method="post" action="form_mail.php" id="form_transfer_form" doc_id="[*id*]">
						[[load_calc_params]]

						<div class="form-transfer-section">
							<div class="form-transfer__line">
								<div class="form-transfer__label">
									Тип трансфера:<span> *</span>
								</div>
								<div class="form-transfer__input">
									<select name="transfer_type" style="color:#919191" onchange="this.style.color='#333'" required>
										<option disabled selected>Выберите тип трансфера</option>
										<option value="a">Аэропорт и вокзал</option>
										<option value="s">Санатории</option>
										<option value="e">Европа</option>
										<option value="c">Города Беларуси</option>
									</select>
								</div>
							</div>
							<div class="form-transfer__line">
								<div class="form-transfer__label">
									Откуда:<span> *</span>
								</div>
								<div class="form-transfer__input">
									<select name="location" style="color:#919191" onchange="this.style.color='#333'" required disabled>
										<option disabled selected>Выберите пункт отправления</option>
									</select>
								</div>
							</div>
							<div class="form-transfer__line">
								<div class="form-transfer__label">
									Куда:<span> *</span>
								</div>
								<div class="form-transfer__input">
									<select name="where" style="color:#919191" onchange="this.style.color='#333'" required disabled>
										<option disabled selected>Выберите пункт назначения</option>
									</select>
								</div>
							</div>
							<div class="form-transfer__more-info road_data">
								Расстояние и время в дороге. 
							</div>
						</div><!-- /form-transfer-section -->

						<div class="form-transfer-section">
							<div class="form-transfer__line adress-line">
								<div class="form-transfer__label">
									Адрес подачи/
									<br> Место назначения:
								</div>
								<div class="form-transfer__input" id="add-input">
									<div class="clone-wrap">
										<input type="text" name="adress" placeholder="Введите адрес">
									</div>
								</div>
								<div class="form-transfer__add-point">
									+ <span class="bottom-line">
									<span class="form-transfer__add-point-text">добавить промежуточную точку</span>
									</span>&nbsp;<span class="txt_red">+5 б.р.</span>
								</div>
							</div>
							<div class="form-transfer__line">
								<div class="form-transfer__label">
									Рейс №:
								</div>
								<div class="form-transfer__input">
									<input type="text" name="voyage_nmr"  placeholder="Введите номер рейса">
								</div>
							</div>
						</div><!-- /form-transfer-section -->

						<div class="form-transfer-section">
							<div class="form-transfer__line">
								<div class="form-transfer__label">
									Дата и время:<span> *</span>
								</div>
								<div class="form-transfer__input calendar">
									<input type="text" name="date" datepicker class="datepicker" style="color:#919191" onclick="this.style.color='#333'">
								</div>
								<div class="form-transfer__input time">
									<select class="input-text-time" name="time_hours" style="color:#919191" onchange="this.style.color='#333'">
										<option value="00">00</option>
										<option value="01">01</option>
										<option value="02">02</option>
										<option value="03">03</option>
										<option value="04">04</option>
										<option value="05">05</option>
										<option value="06">06</option>
										<option value="07">07</option>
										<option value="08">08</option>
										<option value="09">09</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17" >17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
									</select>
									<span>:</span>
									<select class="" name="time_mins" style="color:#919191" onchange="this.style.color='#333'">
										<option value="00">00</option>
										<option value="05">05</option>
										<option value="10">10</option>
										<option value="15">15</option>
										<option value="20">20</option>
										<option value="25">25</option>
										<option value="30">30</option>
										<option value="35">35</option>
										<option value="40">40</option>
										<option value="45">45</option>
										<option value="50">50</option>
										<option value="55">55</option>
									</select>
								</div>
							</div>
						</div><!-- /form-transfer-section -->

						<div class="form-transfer-section">
							<div class="form-transfer__line">
								<div class="form-transfer__label">
									Тип авто:<span> *</span>
								</div>
								<div class="form-transfer__input">
									<select name="auto_type" style="color:#919191" onchange="this.style.color='#333'" disabled>
										<option disabled>Выберите тип авто</option>
									</select>
								</div>
							</div>
						</div><!-- /form-transfer-section -->

						<div class="form-transfer-section">
							<div class="form-transfer__line">
								<div class="form-transfer__label">
									Имя:<span> *</span>
								</div>
								<div class="form-transfer__input">
									<input name="name" type="text" placeholder="Введите ваше имя" reqiured>
								</div>
							</div>
							<div class="form-transfer__line">
								<div class="form-transfer__label">
									Телефон:<span> *</span>
								</div>
								<div class="form-transfer__input">
									<input name="phone" type="text" id="customer_phone" value="375" size="25" placeholder="Введите ваш телефон">
								</div>
							</div>
							<div class="form-transfer__line">
								<div class="form-transfer__label">
									E-mail:
								</div>
								<div class="form-transfer__input">
									<input name="email" type="text" placeholder="Введите ваш E-mail">
								</div>
								<!--@-<div class="form-transfer__more-info">
На этот адрес вы получите копию
<br> данных Вашего заказа
</div>-@-->
							</div>
							<!--@-<div class="form-transfer_checkbox-wrap">
<label class="checkbox">
<input type="checkbox" name="agree_news"> Согласен на уведомление по e-mail об акциях и скидках
</label>
<div class="form-transfer_checkbox-frequency">не чаще 1 раза в месяц</div>
</div>-@-->
						</div><!-- /form-transfer-section -->

						<div class="form-transfer-section price noselect" style="display:none;">
							<div class="form-transfer__line">
								<div class="form-transfer__label">
									Цена поездки:
								</div>
								<div class="form-transfer__price">
									<ul>
										<li></li>
									</ul>
								</div>
								<div class="form-transfer__more-transfer-info">
									<span class="txt_red">Скидка 6 – 50%</span> на обратный трансфер
								</div>
							</div>
						</div><!-- /form-transfer-section -->

						<div class="form-transfer-section payment noselect" style="display:none;">
							<div class="form-transfer__line">
								<div class="form-transfer__label">
									Оплата:
								</div>
								<div class="form-transfer__input form-transfer__radioline">
									<div class="form-transfer__radio-wrap">
										<input type="radio" name="payment" id="payment-cash" value="payment-cash" checked>
										<label for="payment-cash">Наличными в авто</label>
									</div>
									<div class="form-transfer__radio-wrap">
										<input type="radio" name="payment" id="payment-card" value="payment-card">
										<label for="payment-card">Карточкой online</label>
									</div>
								</div>
							</div>
						</div><!-- /form-transfer-section -->

						<input type='hidden' name='type_form' value="7" />
						<input type='hidden' name='price' value="" />

						<div class="form-transfer__input dispn">
							<input name="email_back" type="email" placeholder="email для обратной связи..." value="">
						</div>


						<div class="form-transfer__submit-wrap">
							<input type="submit" value="ЗАКАЗАТЬ" disabled><span>Я согласен с <a href="[~1071~]">правилами оформления заказа</a></span>
						</div>
						<div class="spinner center" style="display: none;">
							<img src="assets/templates/market/img/spinner.gif" alt="">
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
	</body>
</html>