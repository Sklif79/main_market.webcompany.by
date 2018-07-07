name:product_filter_owner_tpl
description:Шаблон вывода контейнера вывода результатов фильтрации
======
<div id="eFiltr_results_wrapper">
	<div class="eFiltr_loader"></div>
	<div id="eFiltr_results">
		<div class="eFiltr_results_ids">[+eFilter_ids+]</div>
		[+dl.wrap+]
		[+product.pages+]
		[!if? &is=`[+product.isstop+]:!=:1`  &then=`
			<div class="amount eFilter_more_wrap more-prod">
				<a start='12' class="eFilter_more primary-button">
					<svg width="17" height="15" viewBox="0 0 17 15" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
						<g id="Canvas__update-img">
							<g id="update-arrows__update-img">
								<g id="Group__update-img">
									<g id="Group_2__update-img">
										<path id="Vector__update-img" d="M 15.1743 1.30227C 14.8606 1.23561 14.5519 1.43352 14.4847 1.74405L 14.0627 3.69419C 12.719 1.42437 10.2527 -1.22843e-08 7.54958 -1.22843e-08C 3.38672 -1.22843e-08 1.41782e-09 3.35349 1.41782e-09 7.47561C 1.41782e-09 7.79317 0.259984 8.05066 0.580737 8.05066C 0.901443 8.05066 1.16147 7.79317 1.16147 7.47561C 1.16147 3.9877 4.02716 1.15009 7.54958 1.15009C 9.846 1.15009 11.9407 2.36473 13.0747 4.29873L 11.1386 3.88787C 10.8249 3.8213 10.5162 4.01916 10.4491 4.32969C 10.3819 4.64021 10.5817 4.94596 10.8953 5.01248L 14.2188 5.71771C 14.2752 5.72972 14.3325 5.73317 14.3891 5.72848C 14.4833 5.72061 14.5751 5.69002 14.6559 5.63822C 14.7852 5.55537 14.876 5.42504 14.9083 5.27594L 15.6206 1.98502C 15.6877 1.67454 15.4879 1.36889 15.1743 1.30227Z" transform="translate(0.368164 0)" />
										<path id="Vector_2__update-img" d="M 14.9555 0.000366923C 14.6349 0.0108558 14.3836 0.276665 14.3942 0.594045C 14.4505 2.28275 13.8394 3.89201 12.6732 5.1256C 11.5072 6.35905 9.9258 7.06917 8.22043 7.12492C 8.14935 7.12722 8.07864 7.12837 8.00784 7.12837C 5.78264 7.12828 3.73278 5.98394 2.57511 4.12985L 4.59361 4.66579C 4.9034 4.748 5.22188 4.56606 5.30495 4.25926C 5.38802 3.9525 5.20422 3.63719 4.89443 3.55485L 1.61146 2.68326C 1.4627 2.64383 1.30413 2.66444 1.1708 2.74063C 1.03737 2.81681 0.940033 2.94244 0.900125 3.08975L 0.0199601 6.34065C -0.0631086 6.6474 0.120683 6.96271 0.430472 7.04501C 0.48088 7.0584 0.531427 7.06484 0.581231 7.06484C 0.837591 7.06484 1.07226 6.89536 1.1418 6.63852L 1.63655 4.81139C 3.01285 6.95733 5.4085 8.27856 8.00756 8.27847C 8.09105 8.27847 8.175 8.27713 8.25881 8.27437C 10.2742 8.2084 12.1431 7.36929 13.5213 5.91153C 14.8994 4.45376 15.6216 2.55183 15.555 0.556092C 15.5445 0.238758 15.2759 -0.010904 14.9555 0.000366923Z" transform="translate(0 6.7215)" />
									</g>
								</g>
							</g>
						</g>
					</svg>

					Показать ещё
				</a>
			</div>
		`!]
	</div>
</div>