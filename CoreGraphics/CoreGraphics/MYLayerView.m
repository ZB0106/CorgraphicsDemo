//
//  MYLayerView.m
//  CoreGraphics
//
//  Created by LoveXLD on 2017/7/8.
//  Copyright © 2017年 rongzebing. All rights reserved.
//

#import "MYLayerView.h"
#import "MYLayer.h"

@implementation MYLayerView

+ (Class)layerClass
{
    return [MYLayer class];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self.layer setNeedsDisplay];
    }
    return self;
}



//- (void)drawRect:(CGRect)rect
//{
//    [super drawRect:rect];
//}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    CGContextDrawImage(ctx, self.bounds, self.image.CGImage);

}

- (void)setImage:(UIImage *)image
{
    _image = image;
    [self.layer setNeedsDisplay];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s",__func__);
    if (self.image) {
        self.image = [UIImage imageNamed:@"timg.jpeg"];
        return;
    }
    self.image = [UIImage imageNamed:@"timg-5.jpeg"];
    
}

@end
