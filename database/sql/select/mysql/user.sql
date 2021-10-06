SELECT			{ALIAS}.*,

				@UserName := CONCAT(
					{ALIAS}.UserNameFirst,
					IF({ALIAS}.UserNameMiddle > '', CONCAT(' ', {ALIAS}.UserNameMiddle), ''),
					IF({ALIAS}.UserNameLast > '', CONCAT(' ', {ALIAS}.UserNameLast), '')
				) AS UserName,

				CONCAT(@UserName, ' [', U.UserEmail, ']') AS {ENTITY}LookupCaption,
				IF({ALIAS}.{ENTITY}PhoneMobile IS NULL, IF({ALIAS}.{ENTITY}PhoneWork IS NULL, IF({ALIAS}.{ENTITY}PhoneHome IS NULL, IF({ALIAS}.{ENTITY}PhoneOther IS NULL, '', {ALIAS}.{ENTITY}PhoneOther), {ALIAS}.{ENTITY}PhoneHome), {ALIAS}.{ENTITY}PhoneWork), {ALIAS}.{ENTITY}PhoneMobile) AS {ENTITY}Phone,
				IF({ALIAS}.{ENTITY}Picture > '', CONCAT('./upload/{NAME}/', {ALIAS}.{ENTITY}Picture), '') AS {ENTITY}PictureURL,
				IF({ALIAS}.{ENTITY}PictureThumbnail > '', CONCAT('./upload/{NAME}/', {ALIAS}.{ENTITY}PictureThumbnail), '') AS {ENTITY}PictureThumbnailURL,

				(
					SELECT			GROUP_CONCAT(UG.UserGroupName ORDER BY UG.UserGroupWeight DESC SEPARATOR '; ')
					FROM			{PREFIX}{NAME}{NAME}group AS UUG
						LEFT JOIN	{PREFIX}{NAME}group AS UG ON UG.UserGroupID = UUG.UserGroupID
					WHERE			UUG.UserID = {ALIAS}.UserID
						AND			UUG.UserUserGroupIsActive = 1
						AND			UG.UserGroupIsActive = 1
					ORDER BY		UG.UserGroupWeight DESC
				) AS UserGroupName,

				(
					SELECT			GROUP_CONCAT(UG.UserGroupWeight ORDER BY UG.UserGroupWeight DESC SEPARATOR '; ')
					FROM			{PREFIX}{NAME}{NAME}group AS UUG
						LEFT JOIN	{PREFIX}{NAME}group AS UG ON UG.UserGroupID = UUG.UserGroupID
					WHERE			UUG.UserID = {ALIAS}.UserID
						AND			UUG.UserUserGroupIsActive = 1
						AND			UG.UserGroupIsActive = 1
					ORDER BY		UG.UserGroupWeight DESC
				) AS UserGroupWeight,

				(
					SELECT			GROUP_CONCAT(UG.UserGroupIdentifier ORDER BY UG.UserGroupWeight DESC SEPARATOR '; ')
					FROM			{PREFIX}{NAME}{NAME}group AS UUG
						LEFT JOIN	{PREFIX}{NAME}group AS UG ON UG.UserGroupID = UUG.UserGroupID
					WHERE			UUG.UserID = {ALIAS}.UserID
						AND			UUG.UserUserGroupIsActive = 1
						AND			UG.UserGroupIsActive = 1
					ORDER BY		UG.UserGroupWeight DESC
				) AS UserGroupIdentifier,

				G.GenderName,
				CONCAT('./image/icon/gender/', LOWER(REPLACE(G.GenderName, ' ', '_')), '.png') AS GenderIconURL,

				L.LanguageName,

				AC.CountryName AS UserAddressCountryName,
				CONCAT('./image/icon/flag/', LOWER(REPLACE(AC.CountryName, ' ', '_')), '.png') AS UserAddressCountryFlagURL,

				(
					SELECT		ATr.ApplicationTrafficExecutionEnd
					FROM		sphp_applicationtraffic AS ATr
					WHERE		ATr.UserID = {ALIAS}.UserID
						AND		{ALIAS}.UserID <> 1 /* Ignore guest user */
					ORDER BY	ATr.ApplicationTrafficExecutionEnd DESC
					LIMIT		0, 1
				) AS UserLastActiveTime,

				'' AS _Other

FROM			{PREFIX}{NAME} AS {ALIAS}
	LEFT JOIN	{PREFIX}gender AS G ON G.GenderID = {ALIAS}.GenderID
	LEFT JOIN	{PREFIX}language AS L ON L.LanguageID = {ALIAS}.LanguageID
	LEFT JOIN	{PREFIX}country AS AC ON AC.CountryID = {ALIAS}.UserAddressCountryID
