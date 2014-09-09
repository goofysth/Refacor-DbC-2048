//
//  M2VibrantTheme.m
//  m2048
//
//  Created by Dragan Basta on 9/9/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import "M2VibrantTheme.h"

#define RGB(r, g, b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]
#define HEX(c)       [UIColor colorWithRed:((c>>16)&0xFF)/255.0 green:((c>>8)&0xFF)/255.0 blue:(c&0xFF)/255.0 alpha:1.0]

@implementation M2VibrantTheme

+ (UIColor *)colorForLevel:(NSInteger)level
{
    switch (level) {
        case 1:
            return RGB(254, 223, 180);
        case 2:
            return RGB(254, 183, 143);
        case 3:
            return RGB(253, 187, 45);
        case 4:
            return RGB(253, 157, 40);
        case 5:
            return RGB(246, 124, 95);
        case 6:
            return RGB(217, 70, 119);
        case 7:
            return RGB(210, 65, 97);
        case 8:
            return RGB(207, 50, 90);
        case 9:
            return RGB(205, 35, 84);
        case 10:
            return RGB(200, 30, 78);
        case 11:
            return RGB(190, 20, 70);
        case 12:
            return RGB(254, 233, 78);
        case 13:
            return RGB(249, 191, 64);
        case 14:
            return RGB(247, 167, 56);
        case 15:
        default:
            return RGB(244, 138, 48);
    }
}


+ (UIColor *)textColorForLevel:(NSInteger)level
{
    switch (level) {
        case 1:
        case 2:
            return RGB(150, 110, 90);
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        default:
            return [UIColor whiteColor];
    }
}


+ (UIColor *)backgroundColor
{
    return RGB(240, 240, 240);
}


+ (UIColor *)boardColor
{
    return RGB(240, 240, 240);
}


+ (UIColor *)scoreBoardColor
{
    return RGB(253, 144, 38);
}


+ (UIColor *)buttonColor
{
    return RGB(205, 35, 85);
}


+ (NSString *)boldFontName
{
    return @"AvenirNext-DemiBold";
}


+ (NSString *)regularFontName
{
    return @"AvenirNext-Regular";
}

@end
