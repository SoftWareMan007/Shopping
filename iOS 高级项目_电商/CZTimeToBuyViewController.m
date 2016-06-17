//
//  CZTimeToBuyViewController.m
//  iOS 高级项目_电商
//
//  Created by ma c on 16/6/15.
//  Copyright © 2016年 SXH. All rights reserved.
//

#import "CZTimeToBuyViewController.h"
#import "CZShufflingView.h"

@interface CZTimeToBuyViewController ()

@property (nonatomic,strong)CZShufflingView *shufflingView;

@end

@implementation CZTimeToBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithTitle:@"搜索" style:UIBarButtonItemStylePlain target:self action:@selector(methodName)];
    self.navigationItem.rightBarButtonItem = rightItem;
}

- (void)methodName{
    NSLog(@"这是搜索对应的方法");
}


- (CZShufflingView *)shufflingView{
    if (!_shufflingView) {
        _shufflingView = [[CZShufflingView alloc]initWithFrame:CGRectMake(0, 64, VIEW_WIDTH, 232)];
    }
    return _shufflingView;
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
