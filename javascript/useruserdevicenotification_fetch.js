/*
	Author: Broken Arrow (SKJoy2001@GMail.Com)
	Created: September 27, 2020
	
	Periodically check for push messages for the device and user 
	and create client (browser) notification as needed. System
	keeps track of messages fetched and marks as read and excludes
	from next fetch, so it is not a necessity to keep track of
	time of the last message.
*/

// Type of notifications to display
var UserUserDeviceNotificationShowBrowser = true;
var UserUserDeviceNotificationShowsJS = false;
var UserUserDeviceNotificationShowConsole = false;

// Configuration
var UserUserDeviceNotificationIcon = './image/logo.png';
var UserUserDeviceNotificationDuration = 15 * 1000; // sJS notification duration before it goes away
var UserUserDeviceNotificationFetchInProgress = false; // Used to avoid overlapping concurrent fetches
var UserUserDeviceNotificationFetchInterval = 5 * 1000; // N seconds
//var UserUserDeviceNotificationTimeLatest = null;

setInterval(
	function(){
		if(UserUserDeviceNotificationFetchInProgress){ // Disabled by 'true'
			//sJS.Notify('Previous notification fetch in progress.', 'System', UserUserDeviceNotificationIcon, UserUserDeviceNotificationDuration, UserUserDeviceNotificationShowBrowser, UserUserDeviceNotificationShowsJS, UserUserDeviceNotificationShowConsole, 'Warning');
		}
		else{
			UserUserDeviceNotificationFetchInProgress = true;

			//var CurrentTime = new Date();
			//var NotificationTimeInsertedFrom = UserUserDeviceNotificationTimeLatest ? new Date(UserUserDeviceNotificationTimeLatest.getTime() + 1000) : null;
			//var TimeInsertedFromURLParameter = NotificationTimeInsertedFrom ? ('&TimeInsertedFrom=' + NotificationTimeInsertedFrom.getFullYear() + '-' + (NotificationTimeInsertedFrom.getMonth() + 1).toString().padStart(2, '0') + '-' + NotificationTimeInsertedFrom.getDate().toString().padStart(2, '0') + ' ' + NotificationTimeInsertedFrom.getHours().toString().padStart(2, '0') + ':' + NotificationTimeInsertedFrom.getMinutes().toString().padStart(2, '0') + ':' + NotificationTimeInsertedFrom.getSeconds().toString().padStart(2, '0') + '') : '';
			var TimeInsertedFromURLParameter = '';

			sJS.HTTP.Get(
				'./?_Script=API/V2/Entry&_Module=UserUserDeviceNotification&_Method=Fetch&UserDeviceIdentifier=' + UserDeviceIdentifier + TimeInsertedFromURLParameter + '', 
				function(Response){ // On success
					try{
						var ResponseJSON = JSON.parse(Response); //console.log(ResponseJSON);

						if(ResponseJSON.Response.Notification){
							ResponseJSON.Response.Notification.forEach(function(Notification, NotificationIndex){ //console.log(NotificationIndex, Notification);
								//UserUserDeviceNotificationTimeLatest = new Date(Notification.TimeInserted); //console.log('UserUserDeviceNotificationTimeLatest = ', UserUserDeviceNotificationTimeLatest);
								sJS.Notify(Notification.NotificationMessage, Notification.NotificationSubject, UserUserDeviceNotificationIcon, UserUserDeviceNotificationDuration, UserUserDeviceNotificationShowBrowser, UserUserDeviceNotificationShowsJS, UserUserDeviceNotificationShowConsole);
							});
						}
						else{ // Invalid JSON with notification response
							sJS.Notify('Invalid JSON with notification response!', 'Notification', UserUserDeviceNotificationIcon, UserUserDeviceNotificationDuration, UserUserDeviceNotificationShowBrowser, UserUserDeviceNotificationShowsJS, UserUserDeviceNotificationShowConsole, 'Error');
						}
					}
					catch(e){ // JSON parse failed!
						sJS.Notify('Invalid JSON response from server!', 'Notification', UserUserDeviceNotificationIcon, UserUserDeviceNotificationDuration, false, false, true, 'Error');
					}

					UserUserDeviceNotificationFetchInProgress = false;
				}, 
				function(StatusCode, ErrorMessage){ // On error
					UserUserDeviceNotificationFetchInProgress = false;

					// Ignore time out error for notification (output to console only)
					var StringMatchMarker = 'Time out of ';
					var ShowErrorNotification = ErrorMessage.substring(0, StringMatchMarker.length) == StringMatchMarker ? false : true;
					ShowErrorNotification = false; // Suppress error notification
					sJS.Notify('Error ' + StatusCode + ': ' + ErrorMessage, 'Notification fetcher', UserUserDeviceNotificationIcon, UserUserDeviceNotificationDuration, ShowErrorNotification, ShowErrorNotification, true, 'Error');
				}, 
				true, // Asynchronous
				UserUserDeviceNotificationFetchInterval - 100 // Time out MS // Should be less than the Status fetch interval
			);
		}
	}, 
	UserUserDeviceNotificationFetchInterval
);
