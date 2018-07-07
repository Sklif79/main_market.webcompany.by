name:documents_files_tpl
description:шаблон вывода документов
======
<div class="uk-flex uk-flex-middle">
	<div class="img-pdf">
		[[file_extension_logo? &filename=`[+col0+]`]]
	</div>
	<div class="content">
		<p>[+col1+]</p>
		<a href="[+col0+]">Скачать [[file_extension? &filename=`[+col0+]`]] ([[filesize? &filename=`[+col0+]`]])</a>
	</div>
</div>