//
//  M2Theme.m
//  m2048
//
//  Created by Danqing on 3/16/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//
//  Abstract class. Should implement Method below.

#import "M2Theme.h"
#import "M2JoyfulTheme.h"
#import "M2DefaultTheme.h"
#import "M2VibrantTheme.h"

@implementation M2Theme

// Init is abstract, should be overriden
- (instancetype) init {
    self = [super init];
    
    if (self){
        //Should implement init method
    }
    
    return self;
}

- (UIColor *)boardColor {
    return [self.color boardColor];
}

- (UIColor *)backgroundColor {
    return [self.color backgroundColor];
}

- (UIColor *)scoreBoardColor {
    return [self.color scoreBoardColor];
}

- (UIColor *)buttonColor {
    return [self.color buttonColor];
}

- (NSString *)boldFontName {
    return [self.font boldFontName];
}

- (NSString *)regularFontName {
    return [self.font regularFontName];
}

- (UIColor *)colorForLevel:(NSInteger)level {
    return [self.color colorForLevel:level];
}

- (UIColor *)textColorForLevel:(NSInteger)level {
    return [self.color textColorForLevel:level];
}

+ (M2Theme *)themeForType:(NSInteger)type
{
    switch (type) {
        case 1:
            return [[M2VibrantTheme alloc] init];
        case 2:
            return [[M2JoyfulTheme alloc] init];
            break;
        default:
            return [[M2DefaultTheme alloc] init];
            break;
    }
}
@end