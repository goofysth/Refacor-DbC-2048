//
//  M2GridContract.h
//  m2048
//
//  Created by Dragan Basta on 9/15/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObjCategory.h"
#import "Contracts.h"
#import "M2Grid.h"

#ifndef __M2GRID__

#define __M2GRID__

BEGIN_CONTRACT (M2Grid)

        INVARIANTS (
            FACT (self.dimension > 0);
            FACT (self.scene != nil);
        )
+ (void) allocCellsOnGrid:(NSMutableArray *)_grid withSize:(NSInteger)dimension VERIFY_PROC (
                                                                                             
        REQUIRE(
                FACT(_grid != nil)
                FACT(dimension >0)
            )
        int gridSize = [_grid count];
        MODIFY(gridSize)
        [super allocCellsOnGrid:_grid withSize:dimension];
        gridSize = [_grid count];
        ENSURE(
                FACT((int)OLD(gridSize) + dimension == gridSize)
              )
)
- (void)forEach:(IteratorBlock)block reverseOrder:(BOOL)reverse VERIFY_PROC (
                                                                                             
     REQUIRE(
             FACT(self.dimension >0)
             )
     [super forEach:block reverseOrder:reverse];
     
)
- (M2Cell *)cellAtPosition:(M2Position)position VERIFY (
     
     REQUIRE(
            )
     M2Cell *Result = [super cellAtPosition:position];
                                                        
     ENSURE(
            FACT(Result != nil)
            )
)

- (M2Tile *)tileAtPosition:(M2Position)position VERIFY (
        
        REQUIRE(
               )
        M2Tile *Result = [super tileAtPosition:position];
                          
        ENSURE(
           FACT(Result != nil || (
                position.x < 0 ||
                position.y < 0 ||
                position.x >= self.dimension ||
                position.y >= self.dimension ) ||
                (position.x == 0 ||
                 position.y == 0
                 ))
        )
)
- (BOOL)hasAvailableCells; VERIFY(
REQUIRE(
        FACT(self.dimension > 0)
        )
      BOOL Result = [super hasAvailableCells];
)

- (void)insertTileAtRandomAvailablePositionWithDelay:(BOOL)delay VERIFY_PROC (
    REQUIRE(FACT(self.scene != nil))
      M2Scene *theScene = self.scene;
      
  [super insertTileAtRandomAvailablePositionWithDelay:delay];
      M2Scene *newScene = self.scene;
      ENSURE(
             FACT(theScene == newScene);
             )
)
END_CONTRACT

#endif