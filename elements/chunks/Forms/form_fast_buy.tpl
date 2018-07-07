name:form_fast_buy
description:Форма купить в 1 клик для одного товара
======
<div id="fast_buy" class="uk-modal">
	<div class="uk-modal-dialog common-popup">
		<div class="uk-align-right"><a class="uk-modal-close"></a></div>
		<h2>Купить в 1 клик</h2>

		<!-- валидатор формы http://formvalidator.net/ -->
		<form action="form_mail.php" method="post" id="form_fast_buy">
			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">
						<input type="text"
							   class="field"
							   placeholder=""
							   name="name"
							   data-validation="required"
							   autocomplete="off"
							   tabindex="1001">
					</span>
					<span class="custom-placeholder">Ваше имя:<span> *</span></span>
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
							   data-validation="custom"
							   data-validation-regexp="^(\s*)?(\+)?([- _():=+]?\d[- _():=+]?){10,14}(\s*)?$"
							   autocomplete="off"
							   tabindex="1002">
					</span>
					<span class="custom-placeholder">Ваш номер телефона:<span> *</span></span>
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
							   data-validation-optional="true"
							   autocomplete="off"
							   tabindex="1003">
					</span>
					<span class="custom-placeholder">Ваш e-mail:</span>
				</label>
			</div>

			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">
						<textarea class="field custom-textarea"
							  name="message"
							  autocomplete="off"
							  data-validation = "length"
							  data-validation-length = "min2"
							  data-validation-optional="true"	
							  tabindex="1004"
							  ></textarea>
					</span>
					<span class="custom-placeholder">Комментарий к заказу:</span>
				</label>
			</div>

			<label class="dispn">
				Ваш email для обратной связи: <br/>
				<input name="email_back" type="email" tabindex="1005" placeholder="Введите email для обратной связи..."/>
			</label>

			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`@CODE:<div class="checkbox-wrap">
			<label class="checkbox">
				<input type="checkbox" name="personal_yes" tabindex="1006"> Я согласен на <a href="[~1775~]" target="_blank">обработку персональных данных</a>
			</label>
			</div>` 
			&tv_visible_name=`personal_yes_visible` 
			&session_param_name=`personal_yes_visible`
			]]
			
			<input type="hidden" name="name_product" value="" />
			<input type='hidden' name='type_form' value="10" />
			<input type='hidden' name='page_name' value="[*pagetitle*]" />
			<input type='hidden' name='page_url' value="[(site_url)][~[*id*]~]" />
			<input type="submit" value="Отправить" class="submit-btn" tabindex="1007">
		</form>
	</div>
</div>