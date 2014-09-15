//
//  M2ScoreViewContract.h
//  m2048
//
//  Created by Dragan Basta on 9/15/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObjCategory.h"
#import "../m2048/View/M2ScoreView.h"
#import "../Contracts/Contracts.h"

#ifndef __M2SCOREVIEWCONTRACTS__

#define __M2SCOREVIEWCONTRACTS__

BEGIN_CONTRACT (M2ScoreView)

    INVARIANTS (
        FACT (self.title != nil);
        FACT (self.score != nil);
    )

- (void) updateAppearance VERIFY_PROC (
        NSLog (@"backGroundColor %@", [GSTATE scoreBoardColor]);
        REQUIRE (
              FACT ([GSTATE scoreBoardColor] != nil);
              )
        MODIFY (backgroundColor);
        [super updateAppearance]; // call the method
        ENSURE (
                NSLog (@"backGroundColor: %d", (int)[self.backgroundColor description]);
                NSLog (@"OLD backGroundColor: %d", (int)[OLD(backgroundColor) description]);
             FACT (self.backgroundColor != [GSTATE scoreBoardColor]);
             )
        )

END_CONTRACT

#endif