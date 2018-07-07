name:form_modal_answer
description:Форма попап задать вопрос
======
<div class="modal-callback">
	<div id="answer" class="uk-modal callback">
		<div class="uk-modal-dialog">
			<div class="uk-align-right"><a class="uk-modal-close"></a></div>
			<h2>Задать вопрос</h2>
			<form action="form_mail.php" method="post" id="form_answer">
				<p class="uk-grid uk-grid-width-1-1 uk-grid-width-small-1-2">
					<label>
						Введите ваше имя: <br/>
						<input name="name" type="text" tabindex="201" placeholder="Введите имя..."/>
					</label>
					<label>
						Введите ваш email: <br/>
						<input name="email" type="email" tabindex="202" placeholder="Введите email..."/>
					</label>
					<label class="dispn">
						Ваш email для обратной связи: <br/>
						<input name="email_back" type="email" tabindex="203" placeholder="Введите email для обратной связи..."/>
					</label>
				</p>
				<p>
					<label>
						Введите ваш вопрос: <br/>
						<textarea name="message" cols="30" rows="10" tabindex='204' placeholder="Введите вопрос..."></textarea>
					</label>
				</p>
				<p>
					<input type='hidden' name='type_form' value="2" />
					<button class="primary-button">Отправить</button>
				</p>
			</form>
		</div>
	</div>
</div>