name:price_tpl
description:Шаблон вывода таблиц с ценами
======
<table class="table-price uk-table">
	<tbody>
		<tr class="title-tbody">
			<td class="title_centerzag" colspan="4">
				<div class="flex-table">
					<div>[+pagetitle+]</div>
					<div class="title-right">
						<a href="[+file_price+]" class="primary-button first">
							<span class="download">
								<svg width="10" height="12" viewBox="0 0 10 12" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <g id="Canvas__download-arrow" transform="translate(-11884 834)">
        <g id="Group62__download-arrow">
            <g id="Canvas__download-arrow">
                <g id="Group6__download-arrow">
                    <g id="Vector3__download-arrow">
                        <g id="Vector__download-arrow">
                            <use xlink:href="#path0__download-arrow" transform="translate(11884 -828.354)"/>
                        </g>
                    </g>
                    <g id="Vector4__download-arrow">
                        <g id="Vector8__download-arrow">
                            <use xlink:href="#path1__download-arrow" transform="translate(11888.4 -834)" />
                        </g>
                    </g>
                </g>
            </g>
        </g>
    </g>
    <defs>
        <path id="path0__download-arrow" d="M 4.85355 4.85355L 4.5 5.2071L 4.85355 5.56066L 5.2071 5.2071L 4.85355 4.85355ZM 2.88773e-09 0.707106L 4.5 5.2071L 5.2071 4.5L 0.707106 2.88773e-09L 2.88773e-09 0.707106ZM 5.2071 5.2071L 9.7071 0.707106L 9 2.88773e-09L 4.5 4.5L 5.2071 5.2071Z" />
        <path id="path1__download-arrow" d="M 1 10.5L 1 0L 0 0L 0 10.5L 1 10.5Z" />
    </defs>
</svg>
							</span>
							
							
							скачать</a>
						<a href="#" class="primary-button print_bat"><span class="print"></span>Печать</a>
					</div>
				</div>
			</td>
		</tr>
		[[ddGetMultipleField? &inputString_docField=`price_row` &inputString_docId=`[+id+]` &rowTpl=`price_row_tpl`]]
	</tbody>
</table>