//
//  M2Properties.m
//  m2048
//
//  Created by Dragan Basta on 9/10/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import "M2Properties.h"

@implementation M2Properties

+ (NSInteger) kDefaultBorderWidth  {
    return (NSInteger) 5;
}

+ (NSInteger) kDefaultCornerRadius {
    return (NSInteger) 4;
}

+ (NSInteger) kDefaultAnimationDuration {
    return (NSInteger) 0.1;
}

+ (NSInteger) kTileSizeForGridDimension:(NSInteger)gridSize {
    
    switch (gridSize) {
        case 3: case 4:
            return 66;
        
        case 5:
            return 56;
            
        default:
            return 66;
    }
}

@end
