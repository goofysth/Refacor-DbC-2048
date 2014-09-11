//
//  M2SKUtils.h
//  m2048
//
//  Created by Dragan Basta on 9/11/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  The min distance in one direction for an effective swipe.
 */
extern const float EFFECTIVE_SWIPE_DISTANCE_THRESHOLD;

/**
 *  The max ratio between the translation in x and y directions to make a swipe valid. i.e. diagonal swipes are invalid.
 */
extern const float VALID_SWIPE_DIRECTION_THRESHOLD;

@interface M2SKUtils : NSObject

@end
