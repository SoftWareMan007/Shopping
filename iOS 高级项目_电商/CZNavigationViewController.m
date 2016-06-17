//
//  CZNavigationViewController.m
//  iOS 高级项目_电商
//
//  Created by ma c on 16/6/15.
//  Copyright © 2016年 SXH. All rights reserved.
//

#import "CZNavigationViewController.h"

@interface CZNavigationViewController ()

@end

@implementation CZNavigationViewController

- (void)initialize{
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    //设置背景图片
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"nav_backImage"] forBarMetrics:UIBarMetricsDefault];
    //设置导航栏的背景颜色
    [navigationBar setBackgroundColor:[UIColor whiteColor]];
    //设置文本
    [navigationBar setTitleTextAttributes:@{
                                           NSFontAttributeName:[UIFont systemFontOfSize:20.0],
                                           NSForegroundColorAttributeName:[UIColor whiteColor]
                                           }];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
