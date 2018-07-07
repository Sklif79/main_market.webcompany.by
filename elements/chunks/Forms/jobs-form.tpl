name:jobs-form
description:Форма отправить резюме
======
<div class="uk-width-2-6">
	<form action="form_mail.php" method="post" class="jobs-form" id="form_jobs_form" enctype="multipart/form-data">
		<h2>отправить свое резюме</h2>

		<div class="form-block">
			<label>
				Введите ваше имя: <br/>
				<input type="text" name="name" placeholder="" tabindex="701" value=""/>
			</label>
		</div>
		<div class="form-block">
			<label>
				Введите ваш телефон: <br/>
				<input type="text" name="phone" placeholder="" tabindex="702" value=""/>
			</label>
		</div>
		<div class="form-block">
			<label>
				Введите ваш email: <br/>
				<input type="text" name="email" placeholder="" tabindex="703" value=""/>
			</label>
		</div>
		<div class="form-block">
			<label>
				Введите ваш комментарий: <br/>
				<textarea name="message" tabindex="704"></textarea>
			</label>
		</div>
		<div class="form-block">
			<div class="uk-form-file input-file">Прикрепить файл<input type="file" name="file" placeholder="" tabindex="705" value=""></div>
		</div>
		<input type='hidden' name='type_form' value="5" />
		<div class="uk-text-center uk-margin-bottom"><button class="primary-button">Отправить резюме</button></div>
	</form>
</div>