SELECT			{ALIAS}.*, 
				CONCAT({ALIAS}.RouteName, '') AS {ENTITY}LookupCaption, 
				CONCAT({ALIAS}.RouteName, ' (BDT: ' , {ALIAS}.RoutePrice, ' /=)' ) AS {ENTITY}Lookup, 
				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
	/*LEFT JOIN		X AS Y ON Y.YID = {ALIAS}.YID*/
