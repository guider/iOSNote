//
//  ViewController.m
//  DelegateDemo
//
//  Created by apple on 16/9/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "ClickDelegate.h"
#import "ViewController2.h"
/*
 *   两个ViewController代理传递参数
 *
 */
// 协议的实现也可以在.h文件
@interface ViewController () <ClickDelegate>
@property(nonatomic, strong) UIButton *button;
@end

@implementation ViewController {

}
- (void)viewDidLoad {
    [super viewDidLoad];

    self.button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 60, 40)];
    self.button.backgroundColor = [UIColor blueColor];
    [self.button setTitle:@"title" forState:UIControlStateNormal];
    [self.view addSubview:self.button];

    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onClick2:)];
    [self.button addGestureRecognizer:gestureRecognizer];
    [self.button setUserInteractionEnabled:YES];
}

- (void)onClick2:(UITapGestureRecognizer *)gesture {

    NSLog(@"click ");
    ViewController2 *controller2 = [[ViewController2 alloc] init];
    controller2.delegate = self;
    [self presentViewController:controller2 animated:YES completion:nil];
//    [self.navigationController pushViewController:controller2 animated:true];

}

- (void)onButtonClick {
    NSLog(@"Delegate ");
}


@end
