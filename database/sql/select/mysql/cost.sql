SELECT			{ALIAS}.*, 
				CONCAT({ALIAS}.CostTitle, '') AS {ENTITY}LookupCaption,
				P.ProjectName,
				IF({ALIAS}.CostStatus = '1', "Cancelled", IF({ALIAS}.CostStatus = '2', "COMPLETED", IF({ALIAS}.CostStatus = '3', "Refunded", "Pending Payment"))) AS CStatus,
				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
	LEFT JOIN	ab_project AS P ON P.ProjectID  = {ALIAS}.ProjectID
