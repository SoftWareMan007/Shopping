//
//  CZClassficationViewController.m
//  iOS 高级项目_电商
//
//  Created by ma c on 16/6/15.
//  Copyright © 2016年 SXH. All rights reserved.
//

#import "CZClassficationViewController.h"
#import "CZClassificationCollectionView.h"

@interface CZClassficationViewController ()

@property (strong,nonatomic)CZClassificationCollectionView *collectinView;

@end

@implementation CZClassficationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:self.collectinView];
}



- (CZClassificationCollectionView *)collectinView{
    if (!_collectinView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
        layout.itemSize = CGSizeMake(80, 80);
        layout.minimumLineSpacing = 10.0;
        layout.minimumInteritemSpacing = 10.0;
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 0, 10);
        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        _collectinView = [[CZClassificationCollectionView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)-64) collectionViewLayout:layout];
        _collectinView.backgroundColor = [UIColor cyanColor];
    }
    return _collectinView;
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
