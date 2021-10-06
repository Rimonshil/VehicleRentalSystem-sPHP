SELECT			{ALIAS}.*,
				CONCAT({ALIAS}.{ENTITY}Name, IF({ALIAS}.{ENTITY}NameNative > '', CONCAT(' | ', {ALIAS}.{ENTITY}NameNative, ''), '')) AS {ENTITY}LookupCaption,
				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
	/*LEFT JOIN		X AS Y ON Y.YID = {ALIAS}.YID*/
