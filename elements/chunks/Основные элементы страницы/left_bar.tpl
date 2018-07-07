name:left_bar
description:Левый блок меню
======
<div class="left-bar uk-width-1-1 uk-width-medium-1-4 uk-hidden-small">
	<nav class="main-menu-left">
		[[left_menu]]
	</nav>
	[[ddGetMultipleField? &inputString_docField=`banner_left` &inputString_docId=`1` &rowTpl=`banner_left_tpl` &outerTpl=`@CODE:<div>[+result+]</div>`]]
	<div class="preview-news uk-visible-large">
		<h4>Статьи</h4>
		[!DocLister? &id=`articles_left_bar` &parents=`20` &total=`2` &tvPrefix=`` &tvList=`services_img_prev_new` &tpl=`articles_left_bar_tpl` &orderBy=`RAND()`!]
		<a href="[~20~]">Все статьи</a>
	</div>
	<div class="preview-news uk-visible-large">
		<h4>Новости</h4>
		[!DocLister? &id=`articles_left_bar` &parents=`8` &depth=`0` &tvPrefix=`` &tvList=`services_img_prev_new` &tpl=`articles_left_bar_tpl` &orderBy=`RAND()` &total=`2` &noneWrapOuter=`0` &filters=``!]
		<a href="[~8~]">Все новости</a>
	</div>
</div>