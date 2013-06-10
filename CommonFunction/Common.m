//
//  Common.m
//  CommonFunction
//
//  Created by tom on 13-6-9.
//  Copyright (c) 2013年 tom. All rights reserved.
//

#import "Common.h"


@implementation Common

+ (void)setYRotation:(CGFloat)degrees anchorPoint:(CGPoint)point perspectiveCoeficient:(CGFloat)m34 layer:(CALayer*)layer
{
	CATransform3D transfrom = CATransform3DIdentity;
	transfrom.m34 = 1.0 / m34;
    CGFloat radiants = degrees / 360.0 * 2 * M_PI;
	transfrom = CATransform3DRotate(transfrom, radiants, 0.0f, 1.0f, 0.0f);

	layer.anchorPoint = point;
	layer.transform = transfrom;
}

+ (void)startRotation:(CALayer*)layer {
    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    anim.duration = 10;
    anim.repeatCount = -1;
    anim.autoreverses = NO;
    anim.fromValue = [NSNumber numberWithFloat:0];
    anim.toValue = [NSNumber numberWithFloat: 2 * M_PI ];
    [layer addAnimation:anim forKey: @"rotation"];
}

+ (void)addPopUpAnimation:(CALayer*)layer
{
	CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    
	CATransform3D scale1 = CATransform3DMakeScale(0.5, 0.5, 1);
	CATransform3D scale2 = CATransform3DMakeScale(1.2, 1.2, 1);
	CATransform3D scale3 = CATransform3DMakeScale(0.9, 0.9, 1);
	CATransform3D scale4 = CATransform3DMakeScale(1.0, 1.0, 1);
    
	NSArray *frameValues = [NSArray arrayWithObjects:
                            [NSValue valueWithCATransform3D:scale1],
                            [NSValue valueWithCATransform3D:scale2],
                            [NSValue valueWithCATransform3D:scale3],
                            [NSValue valueWithCATransform3D:scale4],
                            nil];
    
	[animation setValues:frameValues];
    animation.repeatCount = 10;

	NSArray *frameTimes = [NSArray arrayWithObjects:
	                       [NSNumber numberWithFloat:0.0],
	                       [NSNumber numberWithFloat:0.5],
	                       [NSNumber numberWithFloat:0.9],
	                       [NSNumber numberWithFloat:1.0],
	                       nil];
	[animation setKeyTimes:frameTimes];
    
	animation.fillMode = kCAFillModeBoth;
    
	[layer addAnimation:animation forKey:@"TYPopUpAnimation"];
}

@end
