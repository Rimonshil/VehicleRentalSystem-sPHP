SELECT			{ALIAS}.*, 
				CONCAT({ALIAS}.PersonAddressType, '') AS {ENTITY}LookupCaption,PersonFirstName,CountryName,
				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
	JOIN ab_person AS P ON P.PersonID = {ALIAS}.PersonID
	LEFT JOIN sphp_country AS C ON C.CountryID = {ALIAS}.CountryID
	/*LEFT JOIN		X AS Y ON Y.YID = {ALIAS}.YID*/
