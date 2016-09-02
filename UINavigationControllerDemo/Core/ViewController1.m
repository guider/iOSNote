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

#import "ViewController1.h"
#import "ViewController2.h"

@interface ViewController1 ()
@property(nonatomic, strong) UIButton *button;

@end

@implementation ViewController1 {

}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initButton];
    self.title = @"页面1";
}

/*
 * 1.initWithCoder: 对于.xib，当你嵌入一个视图对象到xib，视图加载时默认调用的是该方法；例如：假如创建的view来自nib，那么将会调用initWithCoder，由系统来调用，自己不能调用。
 * 2.initWithFrame: 非.xib的手动编码，视图加载时默认调用的是该方法。是由自己调用，来初始化对象的
 */
- (void)initButton {
    CGRect cf = self.view.frame;
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
    [self.button setTitle:@"去页面2" forState:UIControlStateNormal];
    [self.button setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:_button];

    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click)];
    [self.button addGestureRecognizer:gestureRecognizer];
    [self.button setUserInteractionEnabled:true];
}

- (void)click {
    ViewController2 *vc = [[ViewController2 alloc] init];
    [self.navigationController pushViewController:vc animated:true];

}

@end