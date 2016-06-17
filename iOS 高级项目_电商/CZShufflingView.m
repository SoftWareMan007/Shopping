//
//  CZShufflingView.m
//  iOS 高级项目_电商
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SXH. All rights reserved.
//

#import "CZShufflingView.h"
#import <SDCycleScrollView.h>
#define URL_PATH @"http://123.57.141.249:8080/beautalk/appHome/appHome.do"

@interface CZShufflingView()

@property (strong,nonatomic)SDCycleScrollView *cycleScrollView;

@property (strong,nonatomic)NSMutableArray *imageArray;

@end

@implementation CZShufflingView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.cycleScrollView];
    }
    return self;
}


- (SDCycleScrollView *)cycleScrollView{
    if (!_cycleScrollView) {
        _cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:self.frame delegate:nil placeholderImage:[UIImage imageNamed:@"桌面"]];
        _cycleScrollView.imageURLStringsGroup =self.imageArray;
        _cycleScrollView.autoScrollTimeInterval = 1.5;
    }
    return _cycleScrollView;
}

- (NSMutableArray *)imageArray{
    if (!_imageArray) {
        _imageArray = [NSMutableArray array];
    }
    return _imageArray;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
