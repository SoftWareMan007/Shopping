//
//  CZMineLoginView.m
//  iOS 高级项目_电商
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SXH. All rights reserved.
//

#import "CZMineLoginView.h"

@interface CZMineLoginView()

@property (strong,nonatomic)UILabel *lineLabel;

@property (strong,nonatomic)UILabel *loginLabel;

@property (strong,nonatomic)UIButton *qqBtn;

@property (strong,nonatomic)UIButton *weChatBtn;

@property (strong,nonatomic)UIButton *sinaBtn;

@end

@implementation CZMineLoginView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.lineLabel];
        [self addSubview:self.loginLabel];
        [self addSubview:self.qqBtn];
        [self addSubview:self.weChatBtn];
        [self addSubview:self.sinaBtn];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    __weak typeof(self)weakSelf = self;
    [self.lineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.mas_top).offset(20);
        make.left.mas_equalTo(weakSelf.mas_left).offset(15);
        make.right.mas_equalTo(weakSelf.mas_right).offset(-15);
        make.height.mas_equalTo(1);
    }];
    [self.loginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.mas_top).offset(6);
        make.centerX.mas_equalTo(weakSelf.lineLabel.mas_centerX);
        make.height.mas_equalTo(30);
    }];
    [self.qqBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.lineLabel.mas_top).offset(33);
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.left.mas_equalTo(weakSelf.mas_left).offset(60);
    }];
    [self.sinaBtn mas_makeConstraints:^(MASConstraintMaker *make) {
       make.top.mas_equalTo(weakSelf.lineLabel.mas_top).offset(33);
        make.right.mas_equalTo(weakSelf.mas_right).offset(-60);
        
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
    
    [self.weChatBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.lineLabel.mas_top).offset(33);
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.centerX.mas_equalTo(weakSelf.mas_centerX);
    }];
}

- (UILabel *)lineLabel{
    if (!_lineLabel) {
        _lineLabel = [[UILabel alloc]init];
        _lineLabel.backgroundColor = RGB(231, 231, 231);
    }
    return _lineLabel;
}

- (UILabel *)loginLabel{
    if (!_loginLabel) {
        _loginLabel = [[UILabel alloc]init];
        _loginLabel.text = @"一键登录";
        _loginLabel.textColor = RGB(203, 203, 203);
    }
    return _loginLabel;
}

- (UIButton *)qqBtn{
    if (!_qqBtn) {
        _qqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_qqBtn setBackgroundImage:[UIImage imageNamed:@"登录界面qq登陆"] forState:UIControlStateNormal];
    }
    return _qqBtn;
}

- (UIButton *)weChatBtn{
    if (!_weChatBtn) {
        _weChatBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_weChatBtn setBackgroundImage:[UIImage imageNamed:@"登录界面微信登录"] forState:UIControlStateNormal];
    }
    return _weChatBtn;
}

- (UIButton *)sinaBtn{
    if (!_sinaBtn) {
        _sinaBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sinaBtn setBackgroundImage:[UIImage imageNamed:@"登陆界面微博登录"] forState:UIControlStateNormal];

        
    }
    return _sinaBtn;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
