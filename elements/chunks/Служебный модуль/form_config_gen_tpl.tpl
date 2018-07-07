name:form_config_gen_tpl
description:Шаблон вывода формы конфигурации сайта
======
<!--@- Форма вывода управления конфигурацией сайта -@-->
<div class="contact-page-feedback-form">
	<form action="[~[*id*]~]" method="post" id="form_config" class="products_form">
		<div class="checkbox-wrap">
			<label class="checkbox [+site_test_mode_active+]">
				<input type="checkbox" name="no_busket_btn" value="1" [+site_test_mode_checked+]>Отключить корзину
			</label>
		</div>
		<div class="select-wrap">
			<label>
				<span class="title">Вариант вывода корзины</span>
				<select name="basket_type">
					[+options_basket+]
				</select>
			</label>
		</div>
		<div class="select-wrap">
			<label>
				<span class="title">Верхняя часть сайта</span>
				<select name="site_header_config">
					[+options_header+]
				</select>
			</label>
		</div>
		<div class="select-wrap">
			<label>
				<span class="title">Нижняя часть сайта</span>
				<select name="site_footer_config">
					[+options_footer+]
				</select>
			</label>
		</div>
		<div class="select-wrap">
			<label>
				<span class="title">Заголовок страницы и навигационные цепочки</span>
				<select name="site_breadcrumbs_config">
					[+options_breadcrumbs+]
				</select>
			</label>
		</div>
		<div class="checkbox-wrap">
			<label class="checkbox [+search_catalog_only_active+]">
				<input type="checkbox" name="search_catalog_only" value="1" [+search_catalog_only_checked+]>Поиск только по каталогу
			</label>
		</div>
		<div class="select-wrap">
			<label>
				<span class="title">Id каталога товаров для поиска</span>
				<input class="settings-id-catalog" type="text" name="search_catalog_id" value="[+search_catalog_id_value+]">
			</label>
			<br>
		</div>
		<div class="select-wrap">
			<label>
				<span class="title">Вариант вывода фильтра по товарам</span>
				<select name="filter_type">
					[+options_filter+]
				</select>
			</label>
		</div>
		<div>
			<input type="hidden" name="change_site_config" value="1">
			<button class="config-btn">Обновить конфигурацию</button>
		</div>
	</form>
</div>