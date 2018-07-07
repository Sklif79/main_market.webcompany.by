name:star_rating_tpl
description:Шаблон вывода звезд в рейтинге
======
<div class="star-rating-container[+class+]">
    <div class="star-rating" id="star-rating-[+id+]" data-rating="[+rating+]" data-id="[+id+]" data-disabled="[+readOnly+]" data-on="[+starOn+]" data-off="[+starOff+]" data-path="[+imagesPath+]" data-stars="[+stars+]" data-type="[+starType+]"></div>
	<!-- добавил -->
	(<span class="star-rating-votes">[+votes+]</span>)
	
	<!--
    <div class="star-rating-info">
        <span>Рейтинг: <span class="star-rating-rating">[+rating+]</span> / [+stars+] (<span class="star-rating-votes">[+votes+]</span>)</span>
    </div>
	-->
</div>
