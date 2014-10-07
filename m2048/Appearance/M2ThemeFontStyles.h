//
//  M2ThemeFontStyles.h
//  m2048
//
//  Created by Dragan Basta on 10/7/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol M2ThemeFontStyles <NSObject>

/** The name of the bold font. */
- (NSString *)boldFontName;

/** The name of the regular font. */
- (NSString *)regularFontName;
@end
