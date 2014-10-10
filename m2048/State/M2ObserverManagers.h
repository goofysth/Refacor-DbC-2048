//
//  M2ObserverManagers.h
//  m2048
//
//  Created by Dragan Basta on 10/10/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, M2Direction) {
    M2DirectionUp,
    M2DirectionLeft,
    M2DirectionDown,
    M2DirectionRight
};
@protocol M2ObserverManagers <NSObject>

/**
 * Moves all movable tiles to the desired direction, then add one more tile to the grid.
 * Also refreshes score and checks game status (won/lost).
 * Could be used for remote observers
 *
 * @param direction The direction of the move (up, right, down, left).
 */
- (void)moveToDirection:(M2Direction)direction;

@end
