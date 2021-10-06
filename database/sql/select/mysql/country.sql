SELECT			{ALIAS}.*,
				CONCAT({ALIAS}.{ENTITY}Name) AS {ENTITY}LookupCaption,
				IF({ALIAS}.{ENTITY}Flag > '', CONCAT('./upload/{NAME}/', {ALIAS}.{ENTITY}Flag), '') AS {ENTITY}FlagURL,
				IF({ALIAS}.{ENTITY}Map > '', CONCAT('./upload/{NAME}/', {ALIAS}.{ENTITY}Map), '') AS {ENTITY}MapURL,

				L.LanguageName,

				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
	LEFT JOIN	{PREFIX}language AS L ON L.LanguageID = {ALIAS}.LanguageID
