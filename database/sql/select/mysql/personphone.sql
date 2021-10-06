SELECT			{ALIAS}.*, 
				CONCAT({ALIAS}.PersonPhoneType, '') AS {ENTITY}LookupCaption,PersonFirstName, 
				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
	LEFT JOIN ab_person AS P ON P.PersonID = {ALIAS}.PersonID
	/*LEFT JOIN		X AS Y ON Y.YID = {ALIAS}.YID*/
