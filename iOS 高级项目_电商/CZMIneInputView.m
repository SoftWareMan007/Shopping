//
//  CZMIneInputView.m
//  iOS 高级项目_电商
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SXH. All rights reserved.
//

#import "CZMIneInputView.h"
#import "CZLoginViewController.h"


@interface CZMIneInputView()

@property (strong,nonatomic)UILabel *bottomLabel;

@property (strong,nonatomic)UITextField *nameText;

@property (strong,nonatomic)UITextField *passwordText;

@property (strong,nonatomic)UILabel *lineLabel;

@property (strong,nonatomic)UIButton *loginBtn;

@property (strong,nonatomic)UIButton *registerBtn;
@end

@implementation CZMIneInputView

- (instancetype)initWithFrame:(CGRect)frame{
    self =[super initWithFrame:frame];
    if (self) {
        [self addSubview:self.bottomLabel];
        [self addSubview:self.nameText];
        [self addSubview:self.passwordText];
        [self addSubview:self.lineLabel];
        [self addSubview:self.loginBtn];
        [self addSubview:self.registerBtn];
    }
    return self;
}


- (void)layoutSubviews{
    [super layoutSubviews];
    __weak typeof(self) weakSelf = self;
    [self.bottomLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.mas_top).offset(80);
        make.left.mas_equalTo(weakSelf.mas_left);
        make.right.mas_equalTo(weakSelf.mas_right);
        make.height.mas_equalTo(89);
    }];
    
    [self.nameText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.bottomLabel.mas_top);
        make.left.mas_equalTo(weakSelf.bottomLabel.mas_left).offset(15);
        make.right.mas_equalTo(weakSelf.bottomLabel.mas_right).offset(-15);
        make.height.mas_equalTo(44);
    }];
    [self.lineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.nameText.mas_bottom);
        make.left.mas_equalTo(weakSelf.mas_left).offset(15);
        make.right.mas_equalTo(weakSelf.mas_right).offset(-15);
        make.height.mas_equalTo(1);
    }];
    [self.passwordText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.lineLabel.mas_bottom);
        make.left.mas_equalTo(weakSelf.bottomLabel.mas_left).offset(15);
        make.right.mas_equalTo(weakSelf.bottomLabel.mas_right).offset(-15);
        make.bottom.mas_equalTo(weakSelf.bottomLabel.mas_bottom);
    }];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.passwordText.mas_bottom).offset(15);
        make.left.mas_equalTo(weakSelf.mas_left).offset(16);
        make.right.mas_equalTo(weakSelf.mas_right).offset(-16);
        make.height.mas_equalTo(35);
    }];
    [self.registerBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(100, 30));
        make.top.mas_equalTo(weakSelf.loginBtn.mas_bottom);
        make.right.mas_equalTo(weakSelf.mas_right).offset(-16);
    }];
}

- (UILabel *)bottomLabel{
    if (!_bottomLabel) {
        _bottomLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 200)];
        _bottomLabel.backgroundColor = RGB(255.0, 255.0, 255.0);
    }
    return _bottomLabel;
}

- (UITextField *)nameText{
    if (!_nameText) {
        _nameText = [[UITextField alloc]initWithFrame:CGRectMake(10, 10, 20, 30)];
        _nameText.backgroundColor = RGB(255.0, 255.0, 255.0);
        _nameText.placeholder = @"请输入号码";
        _nameText.borderStyle = UITextBorderStyleNone;
    }
    return _nameText;
}

- (UITextField *)passwordText{
    if (!_passwordText) {
        _passwordText = [[UITextField alloc]initWithFrame:CGRectMake(10, 10, 20, 30)];
        _passwordText.backgroundColor = RGB(255.0, 255.0, 255.0);
        _passwordText.placeholder = @"请输入密码";
        _passwordText.borderStyle = UITextBorderStyleNone;
    }
    return _passwordText;
}

- (UILabel *)lineLabel{
    if (!_lineLabel) {
        _lineLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 1)];
        _lineLabel.backgroundColor = RGB(230, 230, 230);
    }
    return _lineLabel;
}

- (UIButton *)loginBtn{
    if (!_loginBtn){
        _loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _loginBtn.backgroundColor = RGB(76, 182, 239);
        [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
        _loginBtn.layer.cornerRadius = 7.0;
        [_loginBtn addTarget:self action:@selector(methodToNextView) forControlEvents:UIControlEventTouchUpInside];
    }
    return _loginBtn;
}

- (void)methodToNextView{
   
    CZLoginViewController *loginViewController = [[CZLoginViewController alloc]init];
    [self.owner.navigationController pushViewController:loginViewController animated:YES];
}

- (UIButton *)registerBtn{
    if (!_registerBtn){
        _registerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_registerBtn setTitle:@"免费注册" forState:UIControlStateNormal];
        [_registerBtn setTitleColor:RGB(76, 182, 239) forState:UIControlStateNormal];
    }
    return _registerBtn;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
