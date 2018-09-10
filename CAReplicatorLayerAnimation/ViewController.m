//
//  ViewController.m
//  CAReplicatorLayerAnimation
//
//  Created by Jay on 2018/9/10.
//  Copyright © 2018年 jay. All rights reserved.
//

#import "ViewController.h"
#import "CAReplicatorLayerController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)CAReplicatorLayer:(UIButton *)sender {
    CAReplicatorLayerController *replicatorLayerVc = [[CAReplicatorLayerController alloc] init];
    [self.navigationController pushViewController:replicatorLayerVc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
