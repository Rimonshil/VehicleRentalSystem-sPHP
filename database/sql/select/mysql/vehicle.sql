SELECT			{ALIAS}.*, 
				CONCAT({ALIAS}.VehicleLicenseNumber, '') AS {ENTITY}LookupCaption,TypeName, 
				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
	LEFT JOIN vrs_type As  TY ON  TY.TypeID = {ALIAS}.TypeID
	
	/*LEFT JOIN		X AS Y ON Y.YID = {ALIAS}.YID*/
