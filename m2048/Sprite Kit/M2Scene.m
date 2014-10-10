//
//  M2Scene.m
//  m2048
//
//  Created by Danqing on 3/16/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import "M2Scene.h"
#import "M2GameManager.h"
#import "M2GridView.h"
#import "M2SKUtils.h"

@implementation M2Scene {
  /** The game manager that controls all the logic of the game. */
  M2GameManager *_manager;
  
  /**
   *  Holds observers (which conform to M2ObserverManagers  protocol)
   */
  NSMutableArray *observers;
  
  /**
   * Each swipe triggers at most one action, and we don't wait the swipe to complete
   * before triggering the action (otherwise the user may swipe a long way but nothing
   * happens). So after a swipe is done, we turn this flag to NO to prevent further
   * moves by the same swipe.
   */
  BOOL _hasPendingSwipe;
}

- (id)initWithSize:(CGSize)size
{
  if (self = [super initWithSize:size]) {
      _manager = [M2GameManager sharedM2GameManager];
      observers = [[NSMutableArray alloc] init];
      [self addObserver:_manager];
  }
  return self;
}

- (void)loadBoardWithGrid:(M2Grid *)grid
{
  UIImage *image = [M2GridView gridImageWithGrid:grid];
  SKTexture *backgroundTexture = [SKTexture textureWithCGImage:image.CGImage];
  SKSpriteNode *board = [SKSpriteNode spriteNodeWithTexture:backgroundTexture];
  [board setScale:0.5];
  board.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
  [self addChild:board];
}


- (void)startNewGame
{
  [_manager startNewSessionWithScene:self];
}


# pragma mark - Swipe handling

// @TODO: It makes more sense to move these logic stuff to the view controller.

- (void)didMoveToView:(SKView *)view
{
  if (view == self.view) {
    // Add swipe recognizer immediately after we move to this scene.
    UIPanGestureRecognizer *recognizer = [[UIPanGestureRecognizer alloc]
                                          initWithTarget:self action:@selector(handleSwipe:)];
    [self.view addGestureRecognizer:recognizer];
  } else {
    // If we are moving away, remove the gesture recognizer to prevent unwanted behaviors.
    for (UIGestureRecognizer *recognizer in self.view.gestureRecognizers) {
      [self.view removeGestureRecognizer:recognizer];
    }
  }
}


- (void)handleSwipe:(UIPanGestureRecognizer *)swipe
{
  if (swipe.state == UIGestureRecognizerStateBegan) {
    _hasPendingSwipe = YES;
  } else if (swipe.state == UIGestureRecognizerStateChanged) {
    [self commitTranslation:[swipe translationInView:self.view]];
  }
}


- (void)commitTranslation:(CGPoint)translation
{
  if (!_hasPendingSwipe) return;
  
  CGFloat absX = fabs(translation.x);
  CGFloat absY = fabs(translation.y);
  
  // Swipe too short. Don't do anything.
  if (MAX(absX, absY) < EFFECTIVE_SWIPE_DISTANCE_THRESHOLD) return;
  
  M2Direction direction;
    if (absX > absY * VALID_SWIPE_DIRECTION_THRESHOLD) {
        direction = translation.x < 0 ? M2DirectionLeft : M2DirectionRight;
    } else if (absY > absX * VALID_SWIPE_DIRECTION_THRESHOLD) {
        direction = translation.y < 0 ? M2DirectionUp : M2DirectionDown;
    }
    
    [self notifyWithDirection:direction];
  
  _hasPendingSwipe = NO;
}


# pragma mark - Scene update

- (void)update:(CFTimeInterval)currentTime
{
  /* Called before each frame is rendered */
}

# pragma mark - observers

- (void) addObserver:(NSObject *) observer
{
    [observers addObject:observer];
}

- (void) removeObserver:(NSObject *) observer
{
    [observers removeObject:observer];
}

- (void) notifyWithDirection: (M2Direction)direction
{
    for (id <M2ObserverManagers> observer in observers) {
        if ([observer conformsToProtocol:@protocol(M2ObserverManagers)])
        {
            
            [observer moveToDirection:direction];
        }
        else
        {
            [NSException raise:NSInternalInconsistencyException format:@"objects in the listeners array must confirm to myProtocol"];
        }

    }
}
@end
