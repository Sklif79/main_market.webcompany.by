name:card_documents_tpl
description:Шаблон вывода документов для скачивания
======
<div class="card-documents__el">
	<div class="card-documents__el-img"></div>
	<div class="card-documents__el-inner">
		<a href="[+col0+]" download>
			[+col1+]
		</a>
		<div class="card-documents__el-file-size">
			Размер <span>[[filesize? &filename=`[+col0+]`]]</span>
		</div>
	</div>
</div>