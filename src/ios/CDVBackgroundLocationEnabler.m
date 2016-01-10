#import "CDVBackgroundLocationEnabler.h"
#import <CoreLocation/CoreLocation.h>


@implementation CDVBackgroundLocationEnabler


- (void)enableUnlimited:(CDVInvokedUrlCommand*)command
{
    CLLocationManager* locationManager = [[CLLocationManager alloc] init];
    locationManager.pausesLocationUpdatesAutomatically = NO;
    locationManager.distanceFilter = 10;
    locationManager.desiredAccuracy = kCLLocationAccuracyKilometer;
    [locationManager startUpdatingLocation];
}

@end
