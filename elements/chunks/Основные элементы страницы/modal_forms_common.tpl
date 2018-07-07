name:modal_forms_common
description:блок с всплывающими элементами и формами (верстка)
======
<div id="all-inputs" class="uk-modal">
	<div class="uk-modal-dialog common-popup">
		<div class="uk-align-right"><a class="uk-modal-close"></a></div>
		<h2>Пример формы</h2>

		<p>
			Описание примера формы очень очень длинное
			в две строки
		</p>

		<!-- валидатор формы http://formvalidator.net/ -->
		<form action="form_mail.php" method="post" id="form_common">
			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap custom-placeholder-active">
					<span class="block">
						<input type="text"
							   class="field"
							   disabled
							   placeholder=""
							   value="Автозаполнение строки"
							   name="name"
							   autocomplete="off">
					</span>
					<span class="custom-placeholder">Текстовое поле:</span>
				</label>
			</div>

			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">
						<input type="text"
							   class="field"
							   placeholder=""
							   name="name"
							   data-validation="required"
							   autocomplete="off">
					</span>
					<span class="custom-placeholder">Ф.И.О.<span> *</span></span>
				</label>
			</div>

			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">

						<input id='input-number__0'
							   class="field"
							   min='50' max='60' step='1'
							   type='number'
							   value=''
							   data-validation="required">
						<a href="#" data-for='input-number__0' data-event='add'></a>
						<a href="#" data-for='input-number__0' data-event='sub'></a>
					</span>
					<span class="custom-placeholder">Числовое поле:<span> *</span></span>
				</label>
			</div>

			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">

						<input id='input-number__1'
							   class="field"
							   min='100' max='1000' step='10'
							   type='number'
							   value=''
							   data-validation="required">
						<a href="#" data-for='input-number__1' data-event='add'></a>
						<a href="#" data-for='input-number__1' data-event='sub'></a>
					</span>
					<span class="custom-placeholder">Числовое поле 2:<span> *</span></span>
				</label>
			</div>

			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">
						<input type="text"
							   class="field email"
							   placeholder=""
							   name="email"
							   data-validation="required email"
							   autocomplete="off">
					</span>
					<span class="custom-placeholder">Ваш e-mail:<span> *</span></span>
				</label>
			</div>

			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">
						<input type="text"
							   class="field phone"
							   placeholder=""
							   name="phone"
							   data-validation="custom"
							   data-validation-regexp="^(\s*)?(\+)?([- _():=+]?\d[- _():=+]?){10,14}(\s*)?$"
							   autocomplete="off">

					</span>
					<span class="custom-placeholder">Ваш номер телефона:<span> *</span></span>
				</label>
			</div>

			<div class="field__wrap">
				<label class="field__label custom-select custom-placeholder-active">
					<span class="block">
						<select id="">
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
					</span>
					<span class="custom-placeholder">Список<span> *</span></span>
				</label>
			</div>

			<div class="field__wrap">
				<label class="field__label custom-multiselect custom-select custom-placeholder-active">
					<span class="block">
						<select id="" multiple="multiple">
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
					</span>
					<span class="custom-placeholder">Список с мультиселектом<span> *</span></span>
				</label>
			</div>

			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">
						<input type="text"
							   class="field datepicker-form"
							   placeholder="" name="date"
							   autocomplete="off"
							   data-validation="date" data-validation-format="dd/mm/yyyy">

					</span>
					<span class="custom-placeholder">Дата:<span> *</span></span>
				</label>
			</div>

			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">
						<input type="text"
							   class="field datepicker-form"
							   placeholder="" name="date"
							   data-validation="required"
							   autocomplete="off">

					</span>
					<span class="custom-placeholder">Дата2:<span> *</span></span>
				</label>
			</div>

			<div class="field__wrap">
				<span class="field__subtitle">Файл</span>
				<div class="file-wrapper">
					<label class="label-wrap-file">
						<span class="file-btn">Добавить файл</span>
						<span class="file-title">Выберите файл</span>
						<input type="file" class="filename">
					</label>
					<span class="file-remove-btn"></span>
				</div>
			</div>

			<div class="field__wrap">
				<span class="field__subtitle">Несколько файлов</span>
				<div class="file-wrapper">
					<label class="label-wrap-file">
						<span class="file-btn">Добавить файл</span>
						<span class="file-title">Выберите файл</span>
						<input type="file" class="filename">
					</label>
					<span class="file-remove-btn"></span>
				</div>

				<div class="add-file-field">
					+ Еще один файл
				</div>
			</div>

			<div class="field__wrap">
				<label class="field__label custom-placeholder-wrap">
					<span class="block">
						<textarea class="field custom-textarea"
								  data-validation="required"
								  name="message"
								  autocomplete="off"></textarea>
					</span>
					<span class="custom-placeholder">Комментрарий:<span> *</span></span>
				</label>
			</div>

			[[visible_chunk? 
			&id_param_val=`99`
			&chunk_name=`@CODE:<div class="checkbox-wrap">
			<label class="checkbox">
				<input type="checkbox" name="personal_yes" tabindex="606"> Я согласен на <a href="[~1775~]" target="_blank">обработку персональных данных</a>
			</label>
			</div>` 
			&tv_visible_name=`personal_yes_visible` 
			&session_param_name=`personal_yes_visible`
			]]


			<input type="submit" value="Отправить" class="submit-btn">
		</form>
	</div>
</div>
