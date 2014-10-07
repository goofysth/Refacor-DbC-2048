//
//  M2Theme.m
//  m2048
//
//  Created by Danqing on 3/16/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import "M2Theme.h"
#import "M2JoyfulTheme.h"
#import "M2DefaultTheme.h"
#import "M2VibrantTheme.h"

@implementation M2Theme

// Init is is abstract, should be overriden

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


+ (Class)themeClassForType:(NSInteger)type
{
  switch (type) {
    case 1:
      return [M2VibrantTheme class];
    case 2:
      return [M2JoyfulTheme class];
    default:
      return [M2DefaultTheme class];
  }
}

@end