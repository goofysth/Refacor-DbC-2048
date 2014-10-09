//
//  M2PowerOf3State.m
//  m2048
//
//  Created by Dragan Basta on 10/9/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import "M2PowerOf3State.h"

@implementation M2PowerOf3State

- (NSInteger)valueForLevel:(NSInteger)level
{
    NSInteger value = 1;
    NSInteger base = 3;
    for (NSInteger i = 0; i < level; i++) {
        value *= base;
    }
    return value;
}

@end
