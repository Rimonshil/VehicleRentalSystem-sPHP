SELECT			{ALIAS}.*,
				CONCAT({ALIAS}.UserGroupName) AS UserGroupLookupCaption,
				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
	/*LEFT JOIN		X AS Y ON Y.YID = {ALIAS}.YID*/
