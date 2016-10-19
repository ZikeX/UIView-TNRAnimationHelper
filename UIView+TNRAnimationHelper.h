//
//  Created by Alexandr Panchenko on 14/10/16.
//  Copyright (c) 2016 Thunderrise. All rights reserved.
//
//  Licensed under the MIT license: http://opensource.org/licenses/MIT
//  Latest version can be found at https://github.com/thunderrise/UIView-TNRAnimationHelper
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (TNRAnimationHelper)

/**
 Direction of flip animation.
 */
typedef NS_ENUM(NSUInteger, UIViewAnimationFlipDirection) {
    UIViewAnimationFlipDirectionFromTop,
    UIViewAnimationFlipDirectionFromLeft,
    UIViewAnimationFlipDirectionFromRight,
    UIViewAnimationFlipDirectionFromBottom,
};

/**
  Direction of rotation animation.
 */
typedef NS_ENUM(NSUInteger, UIViewAnimationRotationDirection) {
    UIViewAnimationRotationDirectionRight,
    UIViewAnimationRotationDirectionLeft
};

/**
  Shakes the view horizontally for a short period of time.
 */
- (void)tnr_shakeHorizontally;

/**
  Shakes the view vertically for a short period of time.
 */
- (void)tnr_shakeVertically;

/**
 Performs a pulsing scale animation on a view.

 @param scale    - scale of animation.
 @param duration - duration of the animation.
 @param repeat   - pass YES for the animation to repeat.
 */
- (void)tnr_pulseToSize:(CGFloat)scale
           duration:(NSTimeInterval)duration
             repeat:(BOOL)repeat;

/**
 Performs a 3D-like flip animation of the view around center X or Y axis.
 
 @param duration - total time of the animation.
 @param direction - direction of the flip movement.
 @param repeatCount - number of repetitions of the animation. Pass HUGE_VALF to repeat forever.
 @param shouldAutoreverse - pass YES to make the animation reverse when it reaches the end.
 */
- (void)tnr_flipWithDuration:(NSTimeInterval)duration
               direction:(UIViewAnimationFlipDirection)direction
             repeatCount:(NSUInteger)repeatCount
             autoreverse:(BOOL)shouldAutoreverse;


/**
 Performs a rotation animation of the view around its anchor point.
 
 @param angle - end angle of the rotation in degrees. 0° - 360°.
 @param duration - total time of the animation.
 @param direction - left or right direction of the rotation.
 @param repeatCount - number of repetitions of the animation. Pass HUGE_VALF to repeat forever.
 @param shouldAutoreverse - pass YES to make the animation reverse when it reaches the end.
 */
- (void)tnr_rotateToAngle:(CGFloat)angle
             duration:(NSTimeInterval)duration
            direction:(UIViewAnimationRotationDirection)direction
          repeatCount:(NSUInteger)repeatCount
          autoreverse:(BOOL)shouldAutoreverse;


/**
  Stops current animations.
 */
- (void)tnr_stopAnimation;


/**
  Checks if the view is being animated.
 */
- (BOOL)tnr_isBeingAnimated;


@end
