name:form_callback_popap
description:Форма заказать обратный звонок
======
<div id="callback" class="uk-modal">
	<div class="uk-modal-dialog common-popup">
		<div class="uk-align-right"><a class="uk-modal-close"></a></div>
		<h2>Обратная связь</h2>

		<!-- валидатор формы http://formvalidator.net/ -->
		<form action="form_mail.php" method="post" id="form_callback">
			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">
						<input type="text"
							   class="field"
							   placeholder=""
							   name="name"
							   data-validation="required"
							   autocomplete="off"
							   tabindex="101">
					</span>
					<span class="custom-placeholder">Ваше имя<span> *</span></span>
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
							   tabindex="102">
					</span>
					<span class="custom-placeholder">Ваш номер телефона:<span> *</span></span>
				</label>
			</div>

			<label class="dispn">
				Ваш email для обратной связи: <br/>
				<input name="email_back" type="email" tabindex="103" placeholder="Введите email для обратной связи..."/>
			</label>

			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`@CODE:<div class="checkbox-wrap">
			<label class="checkbox">
				<input type="checkbox" name="personal_yes" tabindex="104" data-validation="required" 
		 data-validation-error-msg="Вам необходимо отметить данный чекбокс"> Я согласен на <a href="[~1775~]" target="_blank">обработку персональных данных</a>
			</label>
			</div>` 
			&tv_visible_name=`personal_yes_visible` 
			&session_param_name=`personal_yes_visible`
			]]
			<input type='hidden' name='type_form' value="1" />
			<input type='hidden' name='page_name' value="[*pagetitle*]" />
			<input type='hidden' name='page_url' value="[(site_url)][~[*id*]~]" />
			<input type="submit" value="Отправить" class="submit-btn" tabindex="105">
		</form>
	</div>
</div>