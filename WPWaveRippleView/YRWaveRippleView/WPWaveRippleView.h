//
//  WPWaveRippleView.h
//  WPWaveRippleView
//
//  Created by xulinfeng on 16/10/15.
//  Copyright © 2016年 markejave. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WPWaveRippleView : UIView

@property (nonatomic, strong, readonly) UIColor *tintColor;

@property (nonatomic, assign, readonly) NSTimeInterval timeInterval;

@property (nonatomic, assign, readonly) NSTimeInterval duration;

@property (nonatomic, assign, readonly) NSInteger waveCount;

@property (nonatomic, assign, readonly) CGFloat minRadius;

@property (nonatomic, assign, readonly) BOOL animating;

- (instancetype)initWithTintColor:(UIColor *)tintColor minRadius:(CGFloat)minRadius waveCount:(NSInteger)waveCount timeInterval:(NSTimeInterval)timeInterval duration:(NSTimeInterval)duration;

- (void)startAnimating;
- (void)stopAnimating;

@end
