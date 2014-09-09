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

#define RGB(r, g, b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]
#define HEX(c)       [UIColor colorWithRed:((c>>16)&0xFF)/255.0 green:((c>>8)&0xFF)/255.0 blue:(c&0xFF)/255.0 alpha:1.0]

@implementation M2Theme

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