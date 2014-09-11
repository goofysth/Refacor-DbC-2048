//
//  M2ControllerUtils.m
//  m2048
//
//  Created by Dragan Basta on 9/11/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import "M2ControllerUtils.h"

@implementation M2ControllerUtils

+ (UIButton *) setButtonLook:(UIButton *)button
{
    button.layer.cornerRadius = [GSTATE cornerRadius];
    button.layer.masksToBounds = YES;
    
    return button;
}

+ (UIButton *) updateButtonLook:(UIButton *)button
{
    button.backgroundColor = [GSTATE buttonColor];
    button.titleLabel.font = [UIFont fontWithName:[GSTATE boldFontName] size:14];
    
    return button;
}

+ (UILabel *) setTargetScoreText:(UILabel *)label
{
    label.textColor = [GSTATE buttonColor];
    
    long target = [GSTATE valueForLevel:GSTATE.winningLevel];
    
    if (target > 100000) {
        label.font = [UIFont fontWithName:[GSTATE boldFontName] size:34];
    } else if (target < 10000) {
        label.font = [UIFont fontWithName:[GSTATE boldFontName] size:42];
    } else {
        label.font = [UIFont fontWithName:[GSTATE boldFontName] size:40];
    }
    
    label.text = [NSString stringWithFormat:@"%ld", target];
    
    
    return label;
}

+ (M2Overlay *) setOverlay:(M2Overlay *)overlay
{
    overlay.message.font = [UIFont fontWithName:[GSTATE boldFontName] size:36];
    overlay.keepPlaying.titleLabel.font = [UIFont fontWithName:[GSTATE boldFontName] size:17];
    overlay.restartGame.titleLabel.font = [UIFont fontWithName:[GSTATE boldFontName] size:17];
    
    overlay.message.textColor = [GSTATE buttonColor];
    [overlay.keepPlaying setTitleColor:[GSTATE buttonColor] forState:UIControlStateNormal];
    [overlay.restartGame setTitleColor:[GSTATE buttonColor] forState:UIControlStateNormal];
    return overlay;
}
@end
