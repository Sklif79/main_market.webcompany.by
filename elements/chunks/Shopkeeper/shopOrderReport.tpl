name:shopOrderReport
description:сообщение приходящее на почту менеджера
======
<p>На сайте сделан заказ.</p>

<p>Номер заказа: [+orderID+]</p>

<b>Состав заказа:</b>

[+orderData+]

<br /><br />

<b>Данные оставившего заказ:</b><br />

<table cellpadding="3">
	<tr><td>ФИО контактного лица:</td><td>[+fiocont+]</td></tr>
	<tr><td>Телефон:</td><td>[+phone+]</td></tr>
	<tr><td>E-mail:</td><td><a href="mailto:[+email+]">[+email+]</a></td></tr>
	<tr><td>Способ доставки:</td><td>[+shk_delivery+]</td></tr>
	<tr><td>Адрес доставки:</td><td>[+delivery_address+]</td></tr>
	<tr><td>Примечание:</td><td>[+comment+]</td></tr>
</table>
