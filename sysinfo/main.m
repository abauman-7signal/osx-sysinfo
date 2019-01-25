//
//  main.m
//  sysinfo
//
//  Created by Aaron Bauman on 1/24/19.
//  Copyright © 2019 Aaron Bauman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PowerSourceInfo.h"
#import "DisplayInfo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        PowerSourceInfo *powerSourceInfo = [[PowerSourceInfo alloc] init];
        NSLog(@"Time remaining on battery %f (secs)", powerSourceInfo.getBatteryTimeRemaining);
        
        DisplayInfo *displayInfo = [[DisplayInfo alloc] init];
        NSLog(@"power state: %i", displayInfo.getPowerState);

        NSLog(@"Exiting program");
    }
    return 0;
}
