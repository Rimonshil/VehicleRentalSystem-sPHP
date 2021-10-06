SELECT			{ALIAS}.*, 
				CONCAT({ALIAS}.PersonFirstName, '') AS {ENTITY}LookupCaption,GenderName,CurrencyName,
				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
	LEFT JOIN sphp_gender As G  ON G.GenderID={ALIAS}.GenderID 
	LEFT JOIN sphp_currency As C  ON C.CurrencyID={ALIAS}.CurrencyID
	/*LEFT JOIN		X AS Y ON Y.YID = {ALIAS}.YID*/
