//
//  DisplayInfo.m
//  sysinfo
//
//  Created by Aaron Bauman on 1/24/19.
//  Copyright © 2019 Aaron Bauman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IOKit/IOKitLib.h>
#import "DisplayInfo.h"

@implementation DisplayInfo

    - (id) init {
        self = [super init];
        return self;
    }

    - (int) getPowerState {
        uint32_t length = 1024;
        char *property = malloc(sizeof(char) * (length + 1));
        char *propertyName = "IOPowerManagement";
        io_registry_entry_t displayWrangler = IORegistryEntryFromPath(kIOMasterPortDefault, "IOService:/IOResources/IODisplayWrangler");
        kern_return_t propertyValue = IORegistryEntryGetProperty(displayWrangler, propertyName, property, &length);
        IORegistryE
        return -1;
    }

@end
