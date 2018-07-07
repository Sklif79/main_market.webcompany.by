<?php
if (!defined('MODX_BASE_PATH')) {
    die('What are you doing? Get out of here!');
}

//общая форма фильтра
$tplFilterForm = '
                <form id="eFiltr" class="eFiltr eFiltr_form filter" action="[+url+]" method="[+form_method+]">
					<div class="filter-section filter-form-title">
						<h4>Фильтр по параметрам</h4>
					</div>
					<div class="filter-section-wrapper">
                    <div style="display:none;" id="eFiltr_info"><span id="eFiltr_info_cnt">[+eFilter_ids_cnt+]</span><span id="eFiltr_info_cnt_ending">[+eFilter_ids_cnt_ending+]</span></div>
                    [+wrapper+]
                        <div class="filter-section filter-submit-section no-hover">
                            <div class="eFiltr_form_result" style="display:none;">[+form_result_cnt+]</div>
                            <div class="eFiltr_btn_wrapper"><input type="submit" class="eFiltr_btn" value="[+btn_text+]"></div>
                            <div class="eFiltr_reset filter-reset filter-reset"><a href="[+url+]">Очистить</a></div>
                        </div>
                    </div>
                </form>';

//кнопка "сброса" фильтра
$tplFilterReset = '';

//название категории фильтра
$filterCatName = '<div class="fltr_cat_zagol">[+cat_name+]</div>';

//класс категории фильтра
$filterCatClass = '';

//чекбоксы
$tplRowCheckbox = '
    <div class="label-field">
        <label class="checkbox [+disabled+]">
            <input type="checkbox" name="f[[+tv_id+]][]" value="[+value+]" [+selected+] [+disabled+]>[+name+]
            <span class="filter__count">([+count+])</span>
        </label>
    </div>
';
$tplOuterCheckbox = '
<div class="filter-section">
    <div class="filter__header">
        <span class="filter__title fltr_name[+tv_id+]">[+name+]</span>
    
        [+description+]
    
        <span class="filter-arrow uk-icon-angle-up"></span>
    </div>
	<div class="fltr_block[+tv_id+] [+active_block_class+] filter-section__item js-spoiler">
		[+wrapper+]
	</div>
</div>
';

//Чекбоксы-кнопки
$tplRowCheckboxBtn = '
    <label class="checkbox select-size [+disabled+]">
        <input type="checkbox" name="f[[+tv_id+]][]" value="[+value+]" [+selected+] [+disabled+]>[+name+]
    </label>
';
$tplOuterCheckboxBtn = '
<div class="filter-section">
    <div class="filter__header">
        <span class="filter__title fltr_name[+tv_id+]">[+name+]</span>
    
        [+description+]
    
        <span class="filter-arrow uk-icon-angle-up"></span>
    </div>
	<div class="fltr_block[+tv_id+] [+active_block_class+] filter-section__item">
		[+wrapper+]
	</div>
</div>
';


//выпадающий список - селект
$tplRowSelect = '<option value="[+value+]" [+selected+] [+disabled+]>[+name+] ([+count+])</option>';
$tplOuterSelect = '
                    <div class="filter-section">
                        <div class="filter__header">
                            <span class="filter__title fltr_name fltr_name_select fltr_name[+tv_id+]">[+name+]</span>

                            [+description+]

                            <span class="filter-arrow uk-icon-angle-up"></span>
                        </div>
	<div class=" fltr_block[+tv_id+] [+active_block_class+] filter-section__item">
		<select name="f[[+tv_id+]][]" class="js-select-brand filter-select" placeholder="Выберите нужное значение">
			<option value="0"> - [+name+] - </option>
			[+wrapper+]
		</select>
	</div>
</div>
';


//диапазон

$tplRowInterval = 'от<input type="text" name="f[[+tv_id+]][min]" value="[+minval+]" data-min-val="[+minvalcurr+]"> до <input type="text" name="f[[+tv_id+]][max]" value="[+maxval+]" data-max-val="[+maxvalcurr+]">';
$tplOuterInterval = '
	<div class="fltr_block fltr_block_interval fltr_block[+tv_id+] [+active_block_class+]">
		<span class="fltr_name fltr_name_interval fltr_name[+tv_id+]">[+name+]</span>
		[+wrapper+]
	</div>
';

//радио - radio
$tplRowRadio = '
<div class="label-field">
    <label class="radio">
        <input type="radio" name="f[[+tv_id+]][]" value="[+value+]" [+selected+] [+disabled+]>[+name+]
        <span class="filter__count">([+count+])</span>
    </label>
</div>';
$tplOuterRadio = '
 <div class="filter-section">
    <div class="filter__header">
        <span class="filter__title fltr_name[+tv_id+]">[+name+]</span>

        [+description+]

        <span class="filter-arrow uk-icon-angle-up"></span>
    </div>
	<div class="fltr_block[+tv_id+] [+active_block_class+] filter-section__item js-spoiler">
        <div class="label-field">
            <label class="radio">
                <input type="radio" name="f[[+tv_id+]][]" value="0">Все
            </label>
        </div>
		[+wrapper+]
	</div>
</div>
';

//выпадающий список - мультиселект
$tplRowMultySelect = '<option value="[+value+]" [+selected+] [+disabled+]>[+name+] ([+count+])</option>';
$tplOuterMultySelect = '
<div class="filter-section">
    <div class="filter__header">
        <span class="filter__title fltr_name fltr_name_select fltr_name[+tv_id+]">[+name+]</span>

        [+description+]

        <span class="filter-arrow uk-icon-angle-up"></span>
    </div>
	<div class=" fltr_block[+tv_id+] [+active_block_class+] filter-section__item">
		<select name="f[[+tv_id+]][]" class="js-select-brand filter-select" multiple="multiple" placeholder="Выберите нужное значение">
			[+wrapper+]
		</select>
	</div>
</div>
';

//слайдер
$tplRowSlider = '<div class="filter-section__item fltr_block[+tv_id+] [+active_block_class+]">
                            <div class="filter-range">
                                <div class="filter-range__data">
                                    <label>
                                        <span class="filter-range__txt">от</span>
                                        <!-- кнопки управления должны называться так:
                                         id-ползунка__0 и id-ползунка__1 -->
                                        <input type="text" id="filter-range-[+tv_id+]__0" class="filter__range" name="f[[+tv_id+]][min]" value="[+minval+]" data-min-val="[+minvalcurr+]">
                                    </label>
                                    <label>
                                        <span class="filter-range__txt">до</span>
                                        <input type="text" id="filter-range-[+tv_id+]__1" class="filter__range" name="f[[+tv_id+]][max]" value="[+maxval+]" data-max-val="[+maxvalcurr+]">
                                    </label>
                                </div>
                                <div id="filter-range-[+tv_id+]"></div>
                            </div>
                        </div>
<script>
$(document).ready(function(){
var minCost[+tv_id+] = 0;
var maxCost[+tv_id+] = 0;
var minCostCurr[+tv_id+] = 0;
var maxCostCurr[+tv_id+] = 0;
if ($("#filter-range-[+tv_id+]__0").val() != "") {
	minCostCurr[+tv_id+] = parseFloat($("#filter-range-[+tv_id+]__0").val());
} else {
	minCostCurr[+tv_id+] = parseFloat($("#filter-range-[+tv_id+]__0").data("min-val"));
}
if ($("#filter-range-[+tv_id+]__1").val() != "") {
	maxCostCurr[+tv_id+] = parseFloat($("#filter-range-[+tv_id+]__1").val());
} else {
	maxCostCurr[+tv_id+] = parseFloat($("#filter-range-[+tv_id+]__1").data("max-val"));
}
minCost[+tv_id+] = parseFloat($("#filter-range-[+tv_id+]__0").data("min-val"));
maxCost[+tv_id+] = parseFloat($("#filter-range-[+tv_id+]__1").data("max-val"));

window.sliderAside[+tv_id+] = new noUiSliderInit(\'filter-range-[+tv_id+]\', minCost[+tv_id+], maxCost[+tv_id+], 1, [ minCostCurr[+tv_id+],maxCostCurr[+tv_id+] ] );
});
</script>';

$tplOuterSlider = '
<div class="filter-section">
    <div class="filter__header">
        <span class="filter__title">[+name+]</span>

        [+description+]

        <span class="filter-arrow uk-icon-angle-up"></span>
    </div>
    [+wrapper+]
</div>';

//цвета
$tplRowColors = '
<label class="select-color checkbox [+disabled+] [+label_selected+]" title="[+name+] ([+count+])">
    <input class="input-color" type="checkbox" name="f[[+tv_id+]][]" value="[+value+]" [+selected+] [+disabled+]>
</label>';

$tplOuterColors = '
<div class="filter-section">
    <div class="filter__header">
        <span class="filter__title fltr_name[+tv_id+]">[+name+]</span>

        [+description+]

        <span class="filter-arrow uk-icon-angle-up"></span>
    </div>
	<div class="fltr_block[+tv_id+] fltr_colors[+tv_id+] [+active_block_class+] filter-section__item">
		[+wrapper+]
	</div>
</div>';

//паттерн
$tplRowPattern = '
	<label class="[+disabled+] [+label_selected+]" title="[+name+] ([+count+])">
		<input type="checkbox" name="f[[+tv_id+]][]" value="[+value+]" [+selected+] [+disabled+]> <img src="[+pattern_folder+][+value+]" alt="[+name+]"> [+name+] <span class="fltr_count">[+count+]</span>
	</label>
';
$tplOuterPattern = '
	<div class="fltr_block fltr_block_checkbox fltr_pattern fltr_block[+tv_id+] fltr_pattern[+tv_id+] [+active_block_class+]">
		<span class="fltr_name fltr_name_checkbox fltr_name[+tv_id+]">[+name+]</span>
		[+wrapper+]
	</div>
';

$tplOuterCategory = '<div class="eFiltr_cat eFiltr_cat[+iteration+]">
                        <div class="fltr_cat_zagol">[+cat_name+]</div>
                        [+wrapper+]
                    </div>';

