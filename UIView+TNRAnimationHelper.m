//
//  Created by Alexandr Panchenko on 14/10/16.
//  Copyright (c) 2016 Thunderrise. All rights reserved.
//
//  Licensed under the MIT license: http://opensource.org/licenses/MIT
//  Latest version can be found at https://github.com/thunderrise/UIView-TNRAnimationHelper
//

#import "UIView+TNRAnimationHelper.h"

@implementation UIView (TNRAnimationHelper)

- (void)tnr_shakeHorizontally {
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.x"];
    
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.duration = 0.5f;
    animation.values = @[@(-12), @(12), @(-8), @(8), @(-4), @(4), @(0)];
    
    [self.layer addAnimation:animation forKey:@"shake"];
}


- (void)tnr_shakeVertically {
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.y"];
    
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.duration = 0.5f;
    animation.values = @[@(-12), @(12), @(-8), @(8), @(-4), @(4), @(0)];
    
    [self.layer addAnimation:animation forKey:@"shake"];
}


- (void)tnr_pulseToSize:(CGFloat)scale
           duration:(NSTimeInterval)duration
             repeat:(BOOL)repeat {
    CABasicAnimation *pulseAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    pulseAnimation.duration = duration;
    pulseAnimation.toValue = [NSNumber numberWithFloat:scale];
    pulseAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    pulseAnimation.autoreverses = YES;
    pulseAnimation.repeatCount = repeat ? HUGE_VALF : 0;
    
    [self.layer addAnimation:pulseAnimation
                      forKey:@"pulse"];
    
}


- (void)tnr_flipWithDuration:(NSTimeInterval)duration
               direction:(UIViewAnimationFlipDirection)direction
             repeatCount:(NSUInteger)repeatCount
             autoreverse:(BOOL)shouldAutoreverse {
    NSString *subtype = nil;
    
    switch (direction) {
        case UIViewAnimationFlipDirectionFromTop:
            subtype = @"fromTop";
            break;
        case UIViewAnimationFlipDirectionFromLeft:
            subtype = @"fromLeft";
            break;
        case UIViewAnimationFlipDirectionFromBottom:
            subtype = @"fromBottom";
            break;
        case UIViewAnimationFlipDirectionFromRight:
        default:
            subtype = @"fromRight";
            break;
    }
    
    CATransition *transition = [CATransition animation];
    
    transition.startProgress = 0.0f;
    transition.endProgress = 1.0f;
    transition.type = @"flip";
    transition.subtype = subtype;
    transition.duration = duration;
    transition.repeatCount = repeatCount;
    transition.autoreverses = shouldAutoreverse;
    
    [self.layer addAnimation:transition
                      forKey:@"spin"];
}


- (void)tnr_rotateToAngle:(CGFloat)angle
             duration:(NSTimeInterval)duration
            direction:(UIViewAnimationRotationDirection)direction
          repeatCount:(NSUInteger)repeatCount
          autoreverse:(BOOL)shouldAutoreverse {
    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    rotationAnimation.toValue = @(direction == UIViewAnimationRotationDirectionRight ? angle : -angle);
    rotationAnimation.duration = duration;
    rotationAnimation.autoreverses = shouldAutoreverse;
    rotationAnimation.repeatCount = repeatCount;
    rotationAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    [self.layer addAnimation:rotationAnimation
                      forKey:@"transform.rotation.z"];
}


- (void)tnr_stopAnimation {
    [CATransaction begin];
    [self.layer removeAllAnimations];
    [CATransaction commit];
    
    [CATransaction flush];
}


- (BOOL)tnr_isBeingAnimated {
    return [self.layer.animationKeys count];
}


@end
