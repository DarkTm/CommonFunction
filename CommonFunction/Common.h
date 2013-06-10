//
//  Common.h
//  CommonFunction
//
//  Created by tom on 13-6-9.
//  Copyright (c) 2013年 tom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface Common : NSObject

//图片旋转 水平360 或垂直360 需要添加 quartzCore 框架
//当前位置旋转
+ (void)setYRotation:(CGFloat)degrees anchorPoint:(CGPoint)point perspectiveCoeficient:(CGFloat)m34 layer:(CALayer*)layer;
//循环旋转
+ (void)startRotation:(CALayer*)layer;

//----------相同功能 end

//layer 放大缩小 动画
+ (void)addPopUpAnimation:(CALayer*)layer;

@end
