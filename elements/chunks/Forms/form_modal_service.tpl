name:form_modal_service
description:Форма заказать услугу
======
<div class="modal-callback">
	<div id="service" class="uk-modal callback">
		<div class="uk-modal-dialog">
			<div class="uk-align-right"><a class="uk-modal-close"></a></div>
			<h2>Заказать услугу</h2>
			<form  action="form_mail.php" method="post" id="form_service">
				<p class="uk-grid uk-grid-width-1-1 uk-grid-width-small-1-2">
					<label>
						Введите ваше имя: <br/>
						<input name="name" type="text" tabindex="401" placeholder="Введите имя..."/>
					</label>
					<label>
						Введите ваш телефон: <br/>
						<input name="phone" type="tel" tabindex="402" placeholder="Введите телефон..."/>
					</label>
					<label class="dispn">
						Ваш email для обратной связи: <br/>
						<input name="email_back" type="email" tabindex="403" placeholder="Введите email для обратной связи..."/>
					</label>
				</p>
				<div class="timepicker">
					<span>c</span>
					<p><input name="calltime_from" type="text" tabindex="404" data-uk-timepicker></p>
					<span>до</span>
					<p> <input name="calltime_before" type="text" tabindex="405" data-uk-timepicker></p>
				</div>
				<p>
					<label>
						Введите комментарии: <br/>
						<textarea name="message" cols="30" rows="10" tabindex='406' placeholder="Введите комментарий..."></textarea>
					</label>
				</p>
				<p>
					<input type="hidden" name="name_service" value="" />
					<input type="hidden" name="type_form" value="4" />
					<button class="primary-button">Отправить</button>
				</p>
			</form>
		</div>
	</div>
</div>