name:social_share
description:поделиться в социальных сетях с карточки товара 
======
<div class="soc">
	Поделиться:
	<a onclick="Share.facebook('[(site_url)][*alias*]','[[tstr_htmlspecialchars? &tstr="[*pagetitle*]"]]','[(site_url)][[ddGetMultipleField? &inputString_docField=`logo` &inputString_docId=`1` &rowTpl=`@CODE:[+col0+]`]]','[*introtext*]')" ><img src="assets/templates/market/img/min/facebook.png" alt=""/></a>
	<a onclick="Share.twitter('[(site_url)][*alias*]')"><img src="assets/templates/market/img/min/tw-p.png" alt=""/></a>
	<a onclick="Share.googleplus('[(site_url)][*alias*]')"><img src="assets/templates/market/img/min/google-p.png" alt=""/></a>
	<a onclick="Share.vkontakte('[(site_url)][*alias*]','[[tstr_htmlspecialchars? &tstr="[*pagetitle*]"]]','[(site_url)][[ddGetMultipleField? &inputString_docField=`logo` &inputString_docId=`1` &rowTpl=`@CODE:[+col0+]`]]','[*introtext*]')"><img src="assets/templates/market/img/min/vk-p.png" alt=""/></a>
</div>