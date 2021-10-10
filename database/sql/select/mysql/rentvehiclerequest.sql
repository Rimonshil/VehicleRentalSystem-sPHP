SELECT			{ALIAS}.*, 
				CONCAT({ALIAS}.RentVehicleRequestComment, '') AS {ENTITY}LookupCaption,	VehicleLicenseNumber,VehicleType,VehicleBrandName,VehicleIsActive,RouteName,RoutePrice,UserNameFirst,

				          
				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
    LEFT JOIN vrs_vehicle As V ON V.VehicleID ={ALIAS}.VehicleID 
	LEFT JOIN vrs_route As RU ON RU.RouteID ={ALIAS}.RouteID 
	LEFT JOIN sphp_user As US ON US.UserID  ={ALIAS}.UserID 



-- SELECT			{ALIAS}.*, 
-- 				CONCAT({ALIAS}.PersonFirstName, '') AS {ENTITY}LookupCaption,GenderName,CurrencyName,
-- 				'' AS _Other

-- FROM			{PREFIX}{NAME} AS {ALIAS}
-- 	LEFT JOIN sphp_gender As G  ON G.GenderID={ALIAS}.GenderID 
-- 	LEFT JOIN sphp_currency As C  ON C.CurrencyID={ALIAS}.CurrencyID
-- 	/*LEFT JOIN		X AS Y ON Y.YID = {ALIAS}.YID*/