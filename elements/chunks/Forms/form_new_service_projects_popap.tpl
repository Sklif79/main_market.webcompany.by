name:form_new_service_projects_popap
description:Форма оставить заявку на проект или услугу
======
<div id="new_service_projects" class="uk-modal">
	<div class="uk-modal-dialog common-popup">
		<div class="uk-align-right"><a class="uk-modal-close"></a></div>
		<h2>Оставить заявку</h2>

		<!-- валидатор формы http://formvalidator.net/ -->
		<form action="form_mail.php" method="post" id="form_new_service_projects">
			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">
						<input type="text"
							   class="field"
							   placeholder=""
							   name="name"
							   data-validation="required"
							   autocomplete="off"
							   tabindex="801">
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
							   tabindex="802">
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
							   tabindex="803">
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
								  tabindex="804"></textarea>
					</span>
					<span class="custom-placeholder">Сообщение:</span>
				</label>
			</div>

			<label class="dispn">
				Ваш email для обратной связи: <br/>
				<input name="email_back" type="email" tabindex="805" placeholder="Введите email для обратной связи..."/>
			</label>

			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`@CODE:<div class="checkbox-wrap">
			<label class="checkbox">
				<input type="checkbox" name="personal_yes" tabindex="806"> Я согласен на <a href="[~1775~]" target="_blank">обработку персональных данных</a>
			</label>
			</div>` 
			&tv_visible_name=`personal_yes_visible` 
			&session_param_name=`personal_yes_visible`
			]]
			<input type='hidden' name='type_form' value="8" />
			<input type='hidden' name='page_name' value="[*pagetitle*]" />
			<input type='hidden' name='page_url' value="[(site_url)][~[*id*]~]" />
			<input type="submit" value="Отправить" class="submit-btn" tabindex="807">
		</form>
	</div>
</div>