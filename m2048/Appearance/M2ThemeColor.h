//
//  M2ThemeColor.h
//  m2048
//
//  Created by Dragan Basta on 10/7/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol M2ThemeColor <NSObject>
/** The background color of the board base. */
- (UIColor *)boardColor;

/** The background color of the entire scene. */
- (UIColor *)backgroundColor;

/** The background color of the score board. */
- (UIColor *)scoreBoardColor;

/** The background color of the button. */
- (UIColor *)buttonColor;

/**
 * The color for the given level. If level is greater than 15, return the color for Level 15.
 *
 * @param level The level of the tile.
 */
- (UIColor *)colorForLevel:(NSInteger)level;


/**
 * The text color for the given level. If level is greater than 15, return the color for Level 15.
 *
 * @param level The level of the tile.
 */
- (UIColor *)textColorForLevel:(NSInteger)level;
@end
