name:breadcrumbs_options_tpl
description:Шаблон вывода элементов опций выбора заголовков и хлебных крошек
======
<li>
	<label class="radio active">
		<div class="settings-bordered__title">
			Вариант [+iteration+]<span class="settings-subtitle">([+tv_title+])</span>
		</div>
		<img src="[+tv_image+]" alt="[+tv_title+]" title="[+tv_title+]">
		<input type="radio" name="[+tv_name+]" value="[+tv_value+]" [+is_checked+]>
	</label>
</li>