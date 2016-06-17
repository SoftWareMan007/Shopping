//
//  CZMineViewController.m
//  iOS 高级项目_电商
//
//  Created by ma c on 16/6/15.
//  Copyright © 2016年 SXH. All rights reserved.
//

#import "CZMineViewController.h"
#import "CZMIneInputView.h"
#import "CZMineLoginView.h"

@interface CZMineViewController ()

@property (strong,nonatomic)CZMIneInputView *inputView;

@property (strong,nonatomic)CZMineLoginView *loginView;

@end

@implementation CZMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:self.inputView];
    [self.view addSubview:self.loginView];
    
}

- (CZMIneInputView *)inputView{
    if (!_inputView) {
        _inputView = [[CZMIneInputView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 270)];
        _inputView.backgroundColor = RGB(245.0, 245.0, 245.0);
        _inputView.owner = self;
    }
    return _inputView;
}

- (CZMineLoginView *)loginView{
    if (!_loginView) {
        _loginView = [[CZMineLoginView alloc]initWithFrame:CGRectMake(0, 270, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)-270)];
        _loginView.backgroundColor = RGB(245.0, 245.0, 245.0);
    }
    return _loginView;
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
