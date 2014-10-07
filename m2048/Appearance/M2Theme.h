//
//  M2Theme.h
//  m2048
//
//  Created by Danqing on 3/16/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "M2ThemeColor.h"
#import "M2ThemeFontStyles.h"

@protocol M2Theme <NSObject>

@property (nonatomic, strong) Class color;
@property (nonatomic, strong) Class font;

/** The background color of the board base. */
+ (UIColor *)boardColor;

/** The background color of the entire scene. */
+ (UIColor *)backgroundColor;

/** The background color of the score board. */
+ (UIColor *)scoreBoardColor;

/** The background color of the button. */
+ (UIColor *)buttonColor;

/** The name of the bold font. */
+ (NSString *)boldFontName;

/** The name of the regular font. */
+ (NSString *)regularFontName;

/**
 * The color for the given level. If level is greater than 15, return the color for Level 15.
 *
 * @param level The level of the tile.
 */
+ (UIColor *)colorForLevel:(NSInteger)level;


/**
 * The text color for the given level. If level is greater than 15, return the color for Level 15.
 *
 * @param level The level of the tile.
 */
+ (UIColor *)textColorForLevel:(NSInteger)level;

@end


@interface M2Theme : NSObject
/**
 *  Holds color scheme
 */
@property (nonatomic, strong) id <M2ThemeColor> color;
/**
 *  Holds fonts scheme
 */
@property (nonatomic, strong) id <M2ThemeFontStyles> font;

/** The background color of the board base. */
- (UIColor *)boardColor;

/** The background color of the entire scene. */
- (UIColor *)backgroundColor;

/** The background color of the score board. */
- (UIColor *)scoreBoardColor;

/** The background color of the button. */
- (UIColor *)buttonColor;

/** The name of the bold font. */
- (NSString *)boldFontName;

/** The name of the regular font. */
- (NSString *)regularFontName;

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

/**
 *  The theme we are using
 *
 *  @param type The index of the choosen
 */
+ (M2Theme *)themeForType:(NSInteger)type;

/**
 * The theme we are using.
 *
 * @param type The index of the theme.
 */
+ (Class)themeClassForType:(NSInteger)type;

@end
