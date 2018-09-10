//
//  CAReplicatorLayerController.m
//  CAReplicatorLayerAnimation
//
//  Created by Jay on 2018/9/10.
//  Copyright © 2018年 jay. All rights reserved.
//

#import "CAReplicatorLayerController.h"

@interface CAReplicatorLayerController ()
{
    CAReplicatorLayer *replicatorLayer;
    CALayer *circleLayer;
}
@end

@implementation CAReplicatorLayerController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"复制图层动画";
    self.view.backgroundColor = [UIColor whiteColor];
    [self addLayer];

}

- (void)addLayer {
    replicatorLayer = [CAReplicatorLayer layer];
    replicatorLayer.bounds = CGRectMake(0, 0, 300, 300);
    replicatorLayer.position = self.view.center;
    replicatorLayer.backgroundColor = [UIColor clearColor].CGColor;
    [self.view.layer addSublayer:replicatorLayer];
    
    [self addcircleLayer];
}

- (void)addcircleLayer {
    circleLayer = [CALayer layer];
    circleLayer.frame = CGRectMake(250, 150, 15, 15);
    circleLayer.cornerRadius = 7.5;
    circleLayer.backgroundColor = [UIColor redColor].CGColor;
    circleLayer.transform = CATransform3DMakeScale(0.01, 0.01, 0.01);
    [replicatorLayer addSublayer:circleLayer];
    
    //重复次数
    replicatorLayer.instanceCount = 15;
    //延迟时间
    replicatorLayer.instanceDelay = 1.f/ 15.f;
    //设置偏移角度和方向
    CGFloat angle = 2 * M_PI / 15;
    replicatorLayer.instanceTransform = CATransform3DMakeRotation(angle, 0, 0, 1);
    
    [self addAnimation];

}

- (void)addAnimation{
    CABasicAnimation *scale = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scale.toValue = @0.1;
    scale.fromValue = @1;
    scale.duration = 1.f;
    scale.repeatCount = HUGE;
    
    [circleLayer addAnimation:scale forKey:@""];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
