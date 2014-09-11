//
//  M2Properties.h
//  m2048
//
//  Created by Dragan Basta on 9/10/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kGameType  @"Game Type"
#define kTheme     @"Theme"
#define kBoardSize @"Board Size"
#define kBestScore @"Best Score"

@interface M2Properties : NSObject

+ (NSInteger) kDefaultBorderWidth;
+ (NSInteger) kDefaultCornerRadius;
+ (NSInteger) kDefaultAnimationDuration;

+ (NSInteger) kTileSizeForGridDimension: (NSInteger) gridSize;

@end
