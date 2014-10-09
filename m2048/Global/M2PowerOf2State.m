//
//  M2PowerOf2State.m
//  m2048
//
//  Created by Dragan Basta on 10/9/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import "M2PowerOf2State.h"

@implementation M2PowerOf2State

- (NSInteger)valueForLevel:(NSInteger)level
{
    NSInteger value = 1;
    NSInteger base = 2;
    for (NSInteger i = 0; i < level; i++) {
        value *= base;
    }
    return value;
}

@end
