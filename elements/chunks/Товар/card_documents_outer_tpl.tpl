name:card_documents_outer_tpl
description:Шаблон вывода контейнера документов для скачивания
======
<div class="card-documents">
	[[if? &is=`[+template+]:!=:156` &then=`<h4>Документы</h4>`]]
	<div class="card-documents-wrap">
		[+result+]
	</div>
</div>