//
//  CZClassificationCollectionView.m
//  iOS 高级项目_电商
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SXH. All rights reserved.
//

#import "CZClassificationCollectionView.h"
#import "CZClassificatioCollectionViewCell.h"

@interface CZClassificationCollectionView()<UICollectionViewDataSource,UICollectionViewDelegate>

@end

@implementation CZClassificationCollectionView

static NSString *cellId = @"cellID";

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    self = [super initWithFrame:frame collectionViewLayout:layout];
    
    if (self) {
        self.delegate = self;
        self.dataSource = self;
    }
    [self registerClass:[CZClassificatioCollectionViewCell class] forCellWithReuseIdentifier:cellId];
    [self reloadData];
    return self;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 2;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 19;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CZClassificatioCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    
    return cell;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
