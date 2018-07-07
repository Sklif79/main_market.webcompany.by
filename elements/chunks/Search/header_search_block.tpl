name:header_search_block
description:Блок формы ввода поискового запроса на главной
======
<form class="search-panel" id="search-panel-top"  action="[~97~]">
	<div class="container flex-search-panel">
		<div class="flex-search__input">
			<input type="text" placeholder="Поиск..." required pattern='[A-Za-zА-Яа-яЁё-0-9]{3,50}' name='s'/>
			<button type="submit"><img src="assets/templates/market/img/search_icon .svg" alt=""/></button>
		</div>		
		<span class="close">
			<img src="assets/templates/market/img/search-close.svg" alt=""/>
		</span>
	</div>
</form>