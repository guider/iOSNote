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

@interface ViewController2 ()

@property(nonatomic, strong) UIButton *button;
@end

@implementation ViewController2
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];

    _button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 80, 40)];
    [self.button setTitle:@"Back" forState:UIControlStateNormal];
    _button.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:_button];

    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(back)];
    [self.button addGestureRecognizer:gestureRecognizer];
    [self.button setUserInteractionEnabled:YES];
}

- (void)back {
    [self.delegate onButtonClick];
    [self dismissViewControllerAnimated:YES completion:nil];

}


@end