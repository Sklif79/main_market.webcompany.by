name:jobs_catalog_tpl
description:Шаблон вывода элементов подкаталога вакансии
======
<div class="card-reviews" >
	
	[[if? &is=`[+add_header_sertif_check+]:=:1` &then=`<div class="title-wrap">
		<h4>[+title+]</h4>
	</div>` ]]

	<div class="question-wrap">
		[[DocLister? &id=`jobs_group` &parents=`[+id+]` &depth=`0` &display=`all` &tvPrefix=`` &tvList=`wages_for_jobs` &tpl=`jobs_prew_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0`]]
	</div>
	[+content+]
</div>