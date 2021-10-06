SELECT			{ALIAS}.*, 
				CONCAT({ALIAS}.MemoTitle, '') AS {ENTITY}LookupCaption, 
				E.EmployeeName,
				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
	LEFT JOIN		ab_employee AS E ON E.EmployeeID = {ALIAS}.EmployeeID

