name:jobs_form_new
description:Форма отправить резюме новая версия
======
<div id="jobs_form_new" class="uk-modal">
	<div class="uk-modal-dialog common-popup">
		<div class="uk-align-right"><a class="uk-modal-close"></a></div>
		<h2>Заказать</h2>

		<!-- валидатор формы http://formvalidator.net/ -->
		<form enctype="multipart/form-data" action="form_mail.php" method="post" id="form_jobs_form_new">
			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">
						<input type="text"
							   class="field"
							   placeholder=""
							   name="name"
							   data-validation="required"
							   autocomplete="off"
							   tabindex="1101">
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
							   tabindex="1102">
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
							   tabindex="1103">
					</span>
					<span class="custom-placeholder">Ваш e-mail:</span>
				</label>
			</div>

			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap custom-placeholder-active">
					<span class="block">
						<input type="text"
							   class="field"
							   disabled
							   placeholder=""
							   value=""
							   name="vacancy_name"
							   autocomplete="off"
							   tabindex="1104">
					</span>
					<span class="custom-placeholder">Желаемая должность:<span> *</span></span>
				</label>
			</div>

			<div class="field__wrap">
				<span class="field__subtitle">Файл<span> *</span></span>
				<div class="file-wrapper">
					<label class="label-wrap-file">
						<span class="file-btn">Прикрепить файл</span>
						<span class="file-title">Выберите файл</span>
						<input type="file"
							   class="filename"
							   name="resume_file"
							   tabindex="1105"
							   data-validation="required"
							   data-validation-error-msg-required="Выберите файл"
							   autocomplete="off"
							   >
					</label>
					<span class="file-remove-btn"></span>
				</div>
				<div class="progress2">
					<div class="bar2"></div>
					<div class="percent2">100%</div>
				</div>
			</div>

			<label class="dispn">
				Ваш email для обратной связи: <br/>
				<input name="email_back" type="email" tabindex="1106" placeholder="Введите email для обратной связи..."/>
			</label>

			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`@CODE:<div class="checkbox-wrap">
			<label class="checkbox">
				<input type="checkbox" name="personal_yes" tabindex="1107"> Я согласен на <a href="[~1775~]" target="_blank">обработку персональных данных</a>
			</label>
			</div>` 
			&tv_visible_name=`personal_yes_visible` 
			&session_param_name=`personal_yes_visible`
			]]
			<input type='hidden' name='type_form' value="11" />
			<input type='hidden' name='vacancy' value="" />
			<input type='hidden' name='page_name' value="[*pagetitle*]" />
			<input type='hidden' name='page_url' value="[(site_url)][~[*id*]~]" />
			<input type="submit" value="Отправить" class="submit-btn" tabindex="1108">
		</form>
	</div>
</div>