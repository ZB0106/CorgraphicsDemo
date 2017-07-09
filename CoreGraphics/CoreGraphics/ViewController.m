//
//  ViewController.m
//  CoreGraphics
//
//  Created by LoveXLD on 2017/7/8.
//  Copyright © 2017年 rongzebing. All rights reserved.
//

#import "ViewController.h"
#import "MYView.h"
#import "MYLayerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MYView *view1 = [MYView new];
    view1.backgroundColor = [UIColor lightGrayColor];
    view1.layer.backgroundColor = [UIColor blueColor].CGColor;
    view1.frame = CGRectMake(20, 20, 200, 200);
    [self.view addSubview:view1];
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 50, 50);
    layer.backgroundColor = [UIColor redColor].CGColor;
    view1.layer.mask = layer;
    
    
    MYLayerView *view2 = [MYLayerView new];
    view2.layer.backgroundColor = [UIColor lightGrayColor].CGColor;
    view2.frame = CGRectMake(20, 250, 200, 200);
    [self.view addSubview:view2];
    
    NSLog(@"%@",view2.layer);
    NSLog(@"%@",view2.layer.sublayers);
    NSLog(@"%@",view2.layer.sublayers);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
