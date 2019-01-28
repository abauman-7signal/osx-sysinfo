//
//  BoardInfo.m
//  sysinfo
//
//  Created by Aaron Bauman on 1/28/19.
//  Copyright © 2019 Aaron Bauman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BoardInfo.h"

@implementation BoardInfo

    - (id) init {
        self = [super init];
        return self;
    }

    - (int) getBoardId {
        io_registry_entry_t ioPlatformExpertDevice = IORegistryEntryFromPath(kIOMasterPortDefault, "IOService:/");
        CFTypeRef boardIdProperty = IORegistryEntryCreateCFProperty(ioPlatformExpertDevice, CFSTR("board-id"), kCFAllocatorDefault, 0);
        CFDataRef boardIdValue = (CFDataRef)boardIdProperty;
        return -1;
    }

@end
