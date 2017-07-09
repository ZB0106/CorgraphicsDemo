//
//  MYView.m
//  CoreGraphics
//
//  Created by LoveXLD on 2017/7/8.
//  Copyright © 2017年 rongzebing. All rights reserved.
//

#import "MYView.h"

@implementation MYView

//- (void)drawRect:(CGRect)rect
//{
////   CGContextRef context = UIGraphicsGetCurrentContext();
////    
////    CGContextDrawImage(context, rect, [UIImage imageNamed:@"timg-5.jpeg"].CGImage);
//}
//
//- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
//{
////    CGContextDrawImage(ctx, CGRectMake(0, 0, 100, 100), [UIImage imageNamed:@"timg-5.jpeg"].CGImage);
////
//////    [super drawLayer:layer inContext:ctx];
////    
////    NSLog(@"%s",__func__);
//}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s",__func__);
}

@end
