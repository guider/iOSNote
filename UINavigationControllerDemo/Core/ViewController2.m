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

#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController2 ()
@property(nonatomic, strong) UIButton *button;
@property(nonatomic, strong) UIButton *button2;

@end

@implementation ViewController2 {
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initButton];
    self.title=@"页面2";

}

- (void)initButton {
    CGRect cf = self.view.frame;
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
    [self.button setTitle:@"去页面3" forState:UIControlStateNormal];
    [self.button setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:_button];

    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click)];
    [self.button addGestureRecognizer:gestureRecognizer];
    [self.button setUserInteractionEnabled:true];

    self.button2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 30)];
    [self.button2 setTitle:@"返回" forState:UIControlStateNormal];
    [self.button2 setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:_button2];

    UITapGestureRecognizer *gestureRecognizer2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click2)];
    [self.button2 addGestureRecognizer:gestureRecognizer2];
    [self.button2 setUserInteractionEnabled:true];

}


- (void)click {
    ViewController3 *vc = [[ViewController3 alloc] init];
    [self.navigationController pushViewController:vc animated:true];

}

- (void)click2 {
    [self.navigationController popViewControllerAnimated:true];

}
@end