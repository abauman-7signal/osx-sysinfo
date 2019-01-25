//
//  PowerSourceInfo.m
//  sysinfo
//
//  Created by Aaron Bauman on 1/24/19.
//  Copyright © 2019 Aaron Bauman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IOKit/ps/IOPowerSources.h>
#import "PowerSourceInfo.h"

@implementation PowerSourceInfo

    - (id) init {
        self = [super init];
        return self;
    }

- (CFTimeInterval) getBatteryTimeRemaining {
    CFTimeInterval timeInterval = IOPSGetTimeRemainingEstimate();
    if (timeInterval == kIOPSTimeRemainingUnknown) {
        NSLog(@"Time remaining on the battery is UNKNOWN");
    } else if (timeInterval == kIOPSTimeRemainingUnlimited) {
        NSLog(@"Time remaining on the battery is UNLIMITED");
    }
    return timeInterval;
}
@end
