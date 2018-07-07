name:catalog2_index_tpl
description:шаблон вывода каталога на главной вариант 2
======
<div class="catalog-element">
	<div class="wrap-catalog">
		<div class="img"><a href="[+url+]"><img src="[[phpthumb? &input=`[+subcat_img_prew+]` &options=`w=158,h=138,f=png,q=95,far=C,bg=ffffff`]]" alt="[+pagetitle+]"/></a></div>
		<div class="catalog-element__info">
			<p class="title"><a href="[+url+]">[+pagetitle+]</a></p>
			<div>
				<div class="wrap-catalog-sub-text">
					[+catalog_index_prew_text+]
				</div>
				[[if? &is='[+no_submenu_catalog_index_prew+]:!=:1' &then='[[DocLister? &id=`subcat_index` &parents=`[+id+]` &depth=`0` &tvPrefix=`` &tvList=`` &tpl=`subcat_index_tpl` &tplLast=`subcat_index_last_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0` &filters=`AND(content:isfolder:=:1)`]]' &else='']]	
			</div>
		</div>
	</div>
</div>