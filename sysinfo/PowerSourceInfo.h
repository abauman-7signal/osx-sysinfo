//
//  PowerSourceInfo.h
//  sysinfo
//
//  Created by Aaron Bauman on 1/24/19.
//  Copyright © 2019 Aaron Bauman. All rights reserved.
//

#ifndef PowerSourceInfo_h
#define PowerSourceInfo_h

@interface PowerSourceInfo : NSObject
- (CFTimeInterval) getBatteryTimeRemaining;
@end

#endif /* PowerSourceInfo_h */
