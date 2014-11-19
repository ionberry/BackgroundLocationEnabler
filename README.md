BackgroundLocationEnabler
=========================

A simple Phonegap Plugin to enable background location update on iOS

Has to be used in conjunction with :

    geolocation.watchPosition() 


***Changes in version 1.0.5****
    This plugin now uses swizzling to ovverride the startLocation function in Cordova's Geolocation plugin.  Previously enabling unlimited with watchPosition lowered battery life very quickly.  This is because "enableHighAccuracy:false" in the Cordova plugin was set to too high of an accuracy (self.locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;) which caused the device to continually fire the GPS. I have changed this line to (self.locationManager.desiredAccuracy = kCLLocationAccuracyKilometer;) so that it uses cell triangulation only. This brings the plugin inline with the W3C spec which states that "enableHighAccuracy:true" should fire up the GPS for a more accurate reading. Note that this does not change the functionality for "enableHighAccuracy:true" which remains (self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;).  Basically now when enableHighAccuracy is set to true the device will use GPS and when it is set to false it will not. Also, I have added the necessary changes to prevent the location manager from automatically pausing within these classes as well.
    
    If you would like to continue using the enable unlimited functionality without the updated startLocation function just use the previous version (1.0.3) of the plugin.
