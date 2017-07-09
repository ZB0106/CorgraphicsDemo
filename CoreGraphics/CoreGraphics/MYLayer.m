//
//  MYLayer.m
//  CoreGraphics
//
//  Created by LoveXLD on 2017/7/8.
//  Copyright © 2017年 rongzebing. All rights reserved.
//

#import "MYLayer.h"
#import <UIKit/UIKit.h>
#import <UIKit/UIGraphics.h>

@implementation MYLayer

- (void)display
{
    NSLog(@"%s",__func__);
//    [super display];
     NSLog(@"%s",__func__);
    
    
    super.contents = super.contents;
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0.0f);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    //画线时的坐标系与正常的一致，不需要翻转,点与点之间的连线代表着圆角的切线
    CGMutablePathRef path = CGPathCreateMutable();
    CGFloat radio = 50;
    CGPathMoveToPoint(path, NULL, 0, self.bounds.size.height);
    CGPathAddArcToPoint(path, NULL, 0,0, self.bounds.size.width, 0, radio);
    CGPathAddArcToPoint(path, NULL, self.bounds.size.width, 0, self.bounds.size.width, self.bounds.size.height, radio);
    CGPathAddArcToPoint(path, NULL, self.bounds.size.width, self.bounds.size.height, 0, self.bounds.size.height, radio);
    CGPathAddArcToPoint(path, NULL, 0, self.bounds.size.height, 0, 0, radio);
//    CGPathAddLineToPoint(path, NULL, 0, radio);
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:50.0f];
    

    
    CGContextAddPath(context, path);
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineWidth(context, 3.0f);
    
    //先切路径再绘图，否则没有效果，裁切路径以后再绘制，就只能在裁切区域绘制
    CGContextClip(context);
    CGContextDrawPath(context, kCGPathEOFillStroke);
    CGPathCloseSubpath(path);
    CGPathRelease(path);

    //绘制图片，图片的坐标系需做翻转处理
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 0,self.bounds.size.height);
    CGContextScaleCTM(context, 1, -1);

//    UIImage *fileImage = [UIImage imageNamed:@"timg-5.jpeg"];
    [self.delegate drawLayer:self inContext:context];
    
    
    
    CGContextRestoreGState(context);
    
    [@"聂梦馨" drawInRect:self.bounds withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:24.0f],NSForegroundColorAttributeName:[UIColor yellowColor]}];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    self.contents = (__bridge id _Nullable)(image.CGImage);
}

- (void)setNeedsDisplay
{
    [super setNeedsDisplay];
}

@end
