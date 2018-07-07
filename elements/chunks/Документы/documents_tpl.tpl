name:documents_tpl
description:шаблон вывода блоков с документами
======
<div class="pdf-block">
	<h2>[+pagetitle+]:</h2>
	<div class="pdf-block uk-grid uk-grid-width-1-1 uk-grid-width-medium-1-2 uk-grid-width-large-1-3">
		[[ddGetMultipleField? &inputString_docField=`documents_files` &inputString_docId=`[+id+]` &rowTpl=`documents_files_tpl`]]
	</div>
</div>