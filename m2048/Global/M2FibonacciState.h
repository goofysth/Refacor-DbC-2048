//
//  M2FibonacciMode.h
//  m2048
//
//  Created by Dragan Basta on 10/9/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "M2GameState.h"

@interface M2FibonacciState : NSObject <M2GameState>

- (NSInteger)valueForLevel:(NSInteger)level;

@end
