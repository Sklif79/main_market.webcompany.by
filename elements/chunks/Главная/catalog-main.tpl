name:catalog-main
description:Каталог товаров на главной
======
<div class="catalog-main [!option_class_add? 
&idp=`99`
&tv_param_name=`catalog_main_background`
&addClass=`nobackground`
!]">
	<div class="container">
		<div class="main-title">
			<h2>[*pagetitle@53*]</h2>
			<a href="[~53~]" class="primary-button">Весь каталог</a>
		</div>
		[*content@53*]
		<div class="uk-grid uk-grid-width-1-1 uk-grid-width-medium-1-2" data-uk-grid-match="{target:'.wrap-catalog'}">
			[[DocLister? &id=`catalog_index` &tvPrefix=`` &tvList=`subcat_img_prew,catalog_index_prew_text,no_submenu_catalog_index_prew` &parents=`53` &tpl=`catalog2_index_tpl` &orderBy=`menuindex ASC` &filters=`AND(content:isfolder:=:1;tvd:catalog_in_index:=:1)`]]
		</div>

		<div class="catalog-main-lnk-wrap">
			<a href="[~53~]" class="view-more button-mobile">Весь каталог</a>
		</div>

	</div>
</div>