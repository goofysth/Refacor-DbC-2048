//
//  M2DefaultTheme.m
//  m2048
//
//  Created by Dragan Basta on 9/9/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import "M2DefaultTheme.h"
#import "M2AppereanceUtils.h"
#import "M2DefaultColor.h"
#import "M2AvenirNextDemiBoldFont.h"

@implementation M2DefaultTheme
- (instancetype) init {
    self = [super init];
    
    if (self) {
        //TODO: check if classes conform to certain protocols
        self.color = [[M2DefaultColor alloc] init];
        self.font = [[M2AvenirNextDemiBoldFont alloc] init];
    }
    
    return self;
}

@end
