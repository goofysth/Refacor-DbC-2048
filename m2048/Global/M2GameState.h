//
//  M2GameState.h
//  m2048
//
//  Created by Dragan Basta on 10/9/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol M2GameState <NSObject>

- (NSInteger)valueForLevel:(NSInteger)level;

@end
