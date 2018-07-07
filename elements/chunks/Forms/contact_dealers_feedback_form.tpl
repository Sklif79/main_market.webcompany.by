name:contact_dealers_feedback_form
description:Форма обратной связи для страницы контакты и диллеры
======
<div class="contact-page-feedback">
	[*contact_dealers_text_before_form*]

	<div class="contact-page-feedback-form">

		<form action="form_mail.php" method="post" class="products_form" id="form_products_form">
			<div class="feedback-form-wrap">
				<div class="field-half-wrap">

					<div class="field__wrap">
						<label class="field__label custom-placeholder-wrap">
							<span class="block">
								<input type="text"
									   class="field"
									   placeholder=""
									   name="name"
									   data-validation="required"
									   tabindex="601"
									   autocomplete="off">
							</span>
							<span class="custom-placeholder">Ф.И.О.<span> *</span></span>
						</label>
					</div>

					<div class="field__wrap">
						<label class="field__label custom-placeholder-wrap custom-placeholder-active">
							<span class="block">
								<input type="text"
									   class="field phone"
									   placeholder="+___(__)___-__-__"
									   value="375"
									   name="phone"
									   tabindex="602"
									   data-validation="custom required"
									   data-validation-regexp="^(\s*)?(\+)?([- _():=+]?\d[- _():=+]?){10,14}(\s*)?$"
									   autocomplete="off">

							</span>
							<span class="custom-placeholder">Телефон:<span> *</span></span>
						</label>
					</div>

					<div class="field__wrap">
						<label class="field__label custom-placeholder-wrap">
							<span class="block">
								<input type="text"
									   class="field email"
									   placeholder=""
									   name="email"
									   data-validation="email"
									   tabindex="603"
									   autocomplete="off">
							</span>
							<span class="custom-placeholder">E-mail:</span>
						</label>
					</div>

					<div class="line wrapper dispn">
						<div class="value">
							<input name="email_back" type="email" placeholder="email для обратной связи..." value="">
						</div>
					</div>

					<div class="field__wrap">
						<label class="field__label custom-placeholder-wrap">
							<span class="block">
								<input type="text"
									   class="field"
									   placeholder=""
									   name="service"
									   tabindex="604"
									   autocomplete="off">
							</span>
							<span class="custom-placeholder">Интересующий товар/услуга</span>
						</label>
					</div>

				</div>

				<div class="field-half-wrap">
					<div class="field__wrap">
						<label class="field__label custom-placeholder-wrap">
							<span class="block">
								<textarea class="field custom-textarea js_full-height"
										  name="message"
										  tabindex="605"
										  autocomplete="off"></textarea>
							</span>
							<span class="custom-placeholder">Сообщение</span>
						</label>
					</div>
				</div>

			</div>
			<div class="feedback-form-footer">
				<div class="feedback-form-footer__check">
					[[visible_chunk? 
					&id_param_val=`99`
					&chunk_name=`@CODE:<div class="checkbox-wrap">
					<label class="checkbox">
						<input type="checkbox" name="personal_yes" tabindex="606" data-validation="required" 
		 data-validation-error-msg="Вам необходимо отметить данный чекбокс"> Я согласен на <a href="[~1775~]" target="_blank">обработку персональных данных</a>
					</label>
					</div>` 
					&tv_visible_name=`personal_yes_visible` 
					&session_param_name=`personal_yes_visible`
					]]
					<div class="feedback__info-field">
						<span>*</span> - обязательные поля
					</div>
				</div>
				<input type='hidden' name='type_form' value="6" />
				<input type="submit" class="feedback-form__submit" value="Отправить">
			</div>
		</form>
	</div>
</div>
<div class="separator-line"></div>