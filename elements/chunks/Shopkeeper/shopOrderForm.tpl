name:shopOrderForm
description:шаблон вывода формы заказа
======
<div class="error">[+validationmessage+]</div>
<div class="products-form-wrap">

    <div class="product-form-title-wrap">
        <div class="product-form-title__title">
            Персональные данные
        </div>
        <div class="product-form-title__info">
            <span>*</span> - обязательные поля
        </div>
    </div>
    <form class="products_form" id="shopOrderForm" action="[~[*id*]~]" method="post">
        <!--@-<fieldset>
            <input type="hidden" name="formid" value="shopOrderForm" />
            <input type="hidden" name="reportTpl" value="shopOrderReport" eform="::::"/>
            <div class="line wrapper">
                <div class="label">Ф.И.О.</div>
                <div class="value">
                    <input name="fiocont" type="text" placeholder="" eform="ФИО контактного лица::1">
                    <div class="placeholder_custom active">Ф.И.О.<span> *</span></div>
                </div>
            </div>
            <div class="line wrapper">
                <div class="label">Телефон:</div>
                <div class="value">
                    <input name="phone" type="text" placeholder="" eform="Телефон::1">
                    <div class="placeholder_custom active">Телефон<span> *</span></div>
                </div>

            </div>
            <div class="line wrapper">
                <div class="label">E-mail:</div>
                <div class="value">
                    <input name="email" type="text" placeholder="" eform="E-mail:email:0">
                    <div class="placeholder_custom active">E-mail</div>
                </div>
            </div>

            <div class="line wrapper radioblock">
                <div class="label label_top">Способ доставки:</div>
                <div class="value">
                    <p>
                        <input id="radioVar1" class="" name="shk_delivery" value="Доставка курьером" type="radio" checked="checked">
                        <label for="radioVar1" class="radio-btn">Доставка курьером</label>
                    </p>
                    <p>
                        <input id="radioVar2" class="" name="shk_delivery" value="Самовывоз" type="radio">
                        <label for="radioVar2" class="radio-btn">Самовывоз</label>
                    </p>
                    <p>
                        <input id="radioVar3" class="" name="shk_delivery" value="Почтовое отправление" type="radio">
                        <label for="radioVar3" class="radio-btn">Почтовое отправление</label></p>
                </div>
            </div>

            <div class="line wrapper">
                <div class="label">Адрес доставки:</div>
                <div class="value">
                    <textarea name="delivery_address" cols="30" rows="10" placeholder="" eform="Адрес доставки::0"></textarea>
                    <div class="placeholder_custom active">Адрес доставки</div>
                </div>
            </div>
            <div class="line wrapper">
                <div class="label">Примечание:</div>
                <div class="value">
                    <textarea name="comment" id="" cols="30" rows="10" placeholder=""></textarea>
                    <div class="placeholder_custom active">Примечание</div>
                </div>
            </div>
            <div class="line wrapper check-agree">
                <div class="label"></div>
                <div class="value">
                    <div class="checkbox-wrap">
                    <label class="checkbox">
                        <input type="checkbox" name=""> Я согласен на <a href="#">обработку персональных данных</a>
                    </label>
            </div>
            <div class="submit">
                <input type="submit" name="submit" class="btn_purple" value="Оформить заказ">
            </div>
        </fieldset>-@-->

        <!-- валидатор формы http://formvalidator.net/ -->
        <input type="hidden" name="formid" value="shopOrderForm"/>
        <input type="hidden" name="reportTpl" value="shopOrderReport" eform="::::"/>

        <div class="field__wrap wrapper">
            <div class="label">Ф.И.О.</div>
            <div class="value">
                <label class="field__label custom-placeholder-wrap">
					<span class="block">
						<input type="text"
                               class="field"
                               placeholder=""
                               name="fiocont"
                               data-validation="required"
                               autocomplete="off"
                               tabindex="201"
                               eform="ФИО контактного лица::1">
					</span>
                    <span class="custom-placeholder">Ф.И.О.<span> *</span></span>
                </label>
            </div>
        </div>

        <div class="field__wrap wrapper">
            <div class="label">Телефон</div>
            <div class="value">
                <label class="field__label custom-placeholder-wrap custom-placeholder-active">
					<span class="block">
						<input type="text"
                               class="field"
                               placeholder=""
                               name="phone"
							   data-validation="required"
                               autocomplete="off"
                               tabindex="202"
                               eform="Телефон::1">
					</span>
                    <span class="custom-placeholder">Телефон<span> *</span></span>
                </label>
            </div>
        </div>

        <div class="field__wrap wrapper">
            <div class="label">E-mail:</div>
            <div class="value">
                <label class="field__label custom-placeholder-wrap">
					<span class="block">
						<input type="text"
                               class="field"
                               placeholder=""
                               name="email"
                               autocomplete="off"
                               tabindex="203"
                               eform="E-mail:email:0">
					</span>
                    <span class="custom-placeholder">E-mail:</span>
                </label>
            </div>
        </div>

        <div class="line wrapper radioblock">
            <div class="label label_top">Способ доставки:</div>
            <div class="value">
                <p>
                    <input id="radioVar1"
                           class=""
                           name="shk_delivery"
                           value="Доставка курьером"
                           type="radio"
                           checked="checked"
                           tabindex="204">
                    <label for="radioVar1" class="radio-btn">Доставка курьером</label>
                </p>
                <p>
                    <input id="radioVar2"
                           class=""
                           name="shk_delivery"
                           value="Самовывоз"
                           type="radio"
                           tabindex="205">
                    <label for="radioVar2" class="radio-btn">Самовывоз</label>
                </p>
                <p>
                    <input id="radioVar3"
                           class=""
                           name="shk_delivery"
                           value="Почтовое отправление"
                           type="radio"
                           tabindex="206">
                    <label for="radioVar3" class="radio-btn">Почтовое отправление</label></p>
            </div>
        </div>

        <div class="field__wrap wrapper">
            <div class="label">Адрес доставки:</div>
            <div class="value">
                <label class="field__label custom-placeholder-wrap">
					<span class="block">
						<input type="text"
                               class="field"
                               placeholder=""
                               autocomplete="off"
                               tabindex="207"
                               name="delivery_address"
                               eform="Адрес доставки::0">
					</span>
                    <span class="custom-placeholder">Адрес доставки</span>
                </label>
            </div>
        </div>

        <div class="field__wrap wrapper">
            <div class="label">Примечание:</div>
            <div class="value">
                <label class="field__label custom-placeholder-wrap">
					<span class="block">
						<textarea class="field custom-textarea"
                                  name="comment"
                                  autocomplete="off"
                                  tabindex="103"></textarea>
					</span>
                    <span class="custom-placeholder">Примечание</span>
                </label>
            </div>
        </div>

        <div class="line wrapper check-agree">
            <div class="label"></div>
            <div class="value">
                <div class="checkbox-wrap">
                    <label class="checkbox">
                        <input type="checkbox" name=""> Я согласен на <a href="[~1775~]" target="_blank">обработку персональных данных</a>
                    </label>
                </div>
                <div class="submit">
                    <input type="submit" name="submit" class="btn_purple" value="Оформить заказ"/>
                </div>
            </div>
        </div>
    </form>
</div>