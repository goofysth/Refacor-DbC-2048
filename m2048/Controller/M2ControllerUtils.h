//
//  M2ControllerUtils.h
//  m2048
//
//  Created by Dragan Basta on 9/11/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "M2Overlay.h"
@interface M2ControllerUtils : NSObject

+ (UIButton *) setButtonLook: (UIButton *) button;
+ (UIButton *) updateButtonLook: (UIButton *) button;

+ (UILabel *) setTargetScoreText: (UILabel *) label;
+ (M2Overlay *) setOverlay: (M2Overlay *) overlay;
@end
