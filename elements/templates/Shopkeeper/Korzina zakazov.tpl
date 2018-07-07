name:Корзина заказов
description:The card
======
<!DOCTYPE html>
<html lang="ru">
	<head>
		{{head}}
	</head>
	<body>
		<header class="header [+noshadow_class+]">
			{{header}}
		</header>
		
		<!-- --@ корзина по ховеру под корзиной в header @-- -->
		{{basket_under_header}} [[breadcrumbs_select_load]]
		
		<div class="container second-page">
			
			[+breadcrumbs_default+]
			
			<div>
				[!Shopkeeper? &noJQuery=`1` &debug=`0` &priceTV=`new_price` &counterField=`1` &cartType=`full` &cartRowTpl=`zakazRowTpl` &cartTpl=`zakazTpl`  &changePrice=`1` &orderFormPage=`140`!]

				[!eForm? &formid=`shopOrderForm`&tpl=`shopOrderForm`&report=`shopOrderReport`&vericode=`0`&ccsender=`1`&gotoid=`140`&subject=`Новый заказ c сайта [(site_name)]`&eFormOnBeforeMailSent=`populateOrderData`&eFormOnMailSent=`sendOrderToManager` &to=`test@webcompany.by` &from=`zakaz@market.by` &submitLimit=`1` &thankyou=`tplThank`!]
			</div>	
		</div>
		<footer class="footer [+footer_add_class+]">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_forms_block}}
		</div>
	</body>
</html>