SELECT			{ALIAS}.*,
				CONCAT({ALIAS}.DataTypeName) AS DataTypeLookupCaption,
				IF({ALIAS}.DataTypeIcon > '', CONCAT('./upload/{NAME}/', {ALIAS}.DataTypeIcon), '') AS DataTypeIconURL,
				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
	/*LEFT JOIN		X AS Y ON Y.YID = {ALIAS}.YID*/
