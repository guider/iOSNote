//
//
//                            _ooOoo_
//                           o8888888o
//                           88" . "88
//                           (| -_- |)
//                            O\ = /O
//                        ____/`---'\____
//                      .   ' \\| |// `.
//                       / \\||| : |||// \
//                     / _||||| -:- |||||- \
//                       | | \\\ - /// | |
//                     | \_| ''\---/'' | |
//                      \ .-\__ `-` ___/-. /
//                   ___`. .' /--.--\ `. . __
//                ."" '< `.___\_<|>_/___.' >'"".
//               | | : `- \`.;`\ _ /`;.`/ - ` : | |
//                 \ \ `-. \_ __\ /__ _/ .-` / /
//         ======`-.____`-.___\_____/___.-`____.-'======
//                            `=---='
//
//                  佛祖保佑             永无BUG
//         .............................................
//
//
//  YYQSplashViewController.h
//  YYQ-Broker-iOS
//
//   github https://github.com/guider
//

//
// Created by apple on 16/9/2.
// Copyright (c) 2016 apple. All rights reserved.
//

#import "ViewController3.h"
#import "UIKit/UIKit.h"
#import "ViewController1.h"


@interface ViewController3 ()
@property(nonatomic, strong) UIButton *button;
@property(nonatomic, strong) UIButton *button2;
@property(nonatomic, strong) UIButton *button3;


@end

@implementation ViewController3
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initButton];
    self.title = @"页面3";
}

- (void)initButton {
    CGRect cf = self.view.frame;
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
    [self.button setTitle:@"去页面1" forState:UIControlStateNormal];
    [self.button setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:_button];

    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click)];
    [self.button addGestureRecognizer:gestureRecognizer];
    [self.button setUserInteractionEnabled:true];


    self.button2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 30)];
    [self.button2 setTitle:@"返回上一页" forState:UIControlStateNormal];
    [self.button2 setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:_button2];

    UITapGestureRecognizer *gestureRecognizer2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click2)];
    [self.button2 addGestureRecognizer:gestureRecognizer2];
    [self.button2 setUserInteractionEnabled:true];


    self.button3 = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 200, 30)];
    [self.button3 setTitle:@"返回首页" forState:UIControlStateNormal];
    [self.button3 setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:_button3];

    UITapGestureRecognizer *gestureRecognizer3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click3)];
    [self.button3 addGestureRecognizer:gestureRecognizer3];
    [self.button3 setUserInteractionEnabled:true];


}

- (void)click {
    ViewController1 *vc = [[ViewController1 alloc] init];
    [self.navigationController pushViewController:vc animated:true];

}

- (void)click2 {
    [self.navigationController popViewControllerAnimated:true];

}

- (void)click3 {
    [self.navigationController popToRootViewControllerAnimated:true];

}

- (void)click4 {
    // 返回到指定的控制器
    //    self.navigationController popToViewController:<#(nonnull UIViewController *)#> animated:<#(BOOL)#>

    // Tried to pop to a view controller that doesn't exist. 尝试去把一个不存在的控制器弹出去
//    CZGreenController *greenVc = [[CZGreenController alloc] init];
    // stack. 栈
//    self.navigationController.viewControllers; 保存的是当前导航控制器栈内的所有控制器

    UIViewController *vc = self.navigationController.viewControllers[1];

    [self.navigationController popToViewController:vc animated:YES];

}
@end