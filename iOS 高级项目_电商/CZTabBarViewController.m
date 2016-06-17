//
//  CZTabBarViewController.m
//  iOS 高级项目_电商
//
//  Created by ma c on 16/6/15.
//  Copyright © 2016年 SXH. All rights reserved.
//

#import "CZTabBarViewController.h"
#import "CZNavigationViewController.h"

@interface CZTabBarViewController ()

/**装在plist文件的数组*/
@property (strong,nonatomic)NSArray *viewControllerArray;

@end

@implementation CZTabBarViewController

#pragma mark -- 懒加载
- (NSArray *)viewControllerArray{
    if (!_viewControllerArray) {
        _viewControllerArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"CZTabBarViewController" ofType:@"plist"]];
    }
    return _viewControllerArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建一个viewController的可变数组
    NSMutableArray *tabBarViewControllerArray = [NSMutableArray arrayWithCapacity:self.viewControllerArray.count];
    [self.viewControllerArray enumerateObjectsUsingBlock:^(NSDictionary *dictionary, NSUInteger idx, BOOL * _Nonnull stop) {
        //将类转换成字符串数据 NSClassFromString
        Class viewControllerClass = NSClassFromString(dictionary[@"viewController"]);
        //创建类
        UIViewController *viewController = [[viewControllerClass alloc]init];
        viewController.title = dictionary[@"title"];
        viewController.tabBarItem.image = [[UIImage imageNamed:dictionary[@"tabBarItemImage"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        viewController.tabBarItem.selectedImage = [[UIImage imageNamed:dictionary[@"tabBarItemSelectedImage"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        [viewController.tabBarItem setTitleTextAttributes:@{
//                                            NSFontAttributeName:[UIFont systemFontOfSize:15.0],NSForegroundColorAttributeName:[UIColor lightGrayColor]
//                                                          }forState:UIControlStateNormal];
//        
//        [viewController.tabBarItem setTitleTextAttributes:@{
//                                             NSFontAttributeName:[UIFont systemFontOfSize:17.0],                      NSForegroundColorAttributeName:[UIColor blueColor]
//                                                           }forState:UIControlStateSelected];
        
        [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13.0],
                                                          NSForegroundColorAttributeName:[UIColor lightGrayColor]
                                                          
                                                           }forState:UIControlStateNormal];
        [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13.0],
                                                           NSForegroundColorAttributeName:[UIColor blueColor]
                                                           
                                                            }forState:UIControlStateSelected];
        CZNavigationViewController *navigation = [[CZNavigationViewController alloc]initWithRootViewController:viewController];
        [tabBarViewControllerArray addObject:navigation];
    }];
    self.viewControllers = tabBarViewControllerArray;
    //默认进入时，选中的。
    self.selectedIndex = 0;
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
