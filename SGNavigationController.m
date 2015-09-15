//
//  SGNavigationController.m
//  YaKe
//
//  Created by liu chao on 15/9/15.
//  Copyright (c) 2015年 ssyx. All rights reserved.
//

#import "SGNavigationController.h"

@interface SGNavigationController ()

@end

@implementation SGNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationBar *navBar = [UINavigationBar appearance];
    //导航条背景色
    UIColor *color = [[UIColor alloc] initWithRed:72/255.0 green:187/255.0 blue:211/255.0 alpha:1];
    navBar.barTintColor = color;
    //字体颜色
    navBar.tintColor = [UIColor whiteColor];
    
    
    
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    //返回按钮
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    backItem.title = @"返回";
    viewController.navigationItem.backBarButtonItem = backItem;
    
    //隐藏地步tabar
   
    if (self.childViewControllers.count){//即将跳往二级界面
        self.navigationController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:YES];
}

//弹回来
- (UIViewController *)popViewControllerAnimated:(BOOL)animated{

    if (self.childViewControllers.count == 2) {//即将跳到跟控制器
        
        self.navigationController.hidesBottomBarWhenPushed = NO;
    }
    return [super popViewControllerAnimated:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


@end
