//
//  M2FibonacciMode.m
//  m2048
//
//  Created by Dragan Basta on 10/9/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import "M2FibonacciState.h"

@implementation M2FibonacciState

- (NSInteger)valueForLevel:(NSInteger)level
{
    NSInteger fibNum1 = 1;
    NSInteger fibNum2 = 1;
    for (NSInteger i = 0; i < level; i++) {
        NSInteger fibNum3 = fibNum1 + fibNum2;
        fibNum1 = fibNum2;
        fibNum2 = fibNum3;
    }
    return fibNum2;
}

@end
