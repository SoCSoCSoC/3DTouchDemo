//
//  ViewController.m
//  3D Touch
//
//  Created by QQ on 15/12/6.
//  Copyright © 2015年 QQ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     * UIApplicationShortcutItem 创建标签的类
     * UIApplicationShortcutItem 创建可变标签的类
     * UIApplicationShortcutItem 创建标签ICON的类
     */
    UIApplicationShortcutIcon *icon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
    UIApplicationShortcutItem *item = [[UIApplicationShortcutItem alloc]initWithType:@"two" localizedTitle:@"哈哈哈" localizedSubtitle:@"嘿嘿嘿" icon:icon userInfo:nil];
    
    UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeHome];
    UIApplicationShortcutItem *item1 = [[UIApplicationShortcutItem alloc]initWithType:@"two" localizedTitle:@"哈~" localizedSubtitle:@"嘿" icon:icon1 userInfo:nil];
    // 如果系统图标不满足需求，可以使用+ (instancetype)iconWithTemplateImageName:(NSString *)templateImageName;
    // 添加自定义图片作为标签，需要注意的是：图片必须预先添加进bundle中
    UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"1231423"];
    UIApplicationShortcutItem *item2 = [[UIApplicationShortcutItem alloc]initWithType:@"two" localizedTitle:@"哈..." localizedSubtitle:@"嘿" icon:icon2 userInfo:nil];
    
    // shortcutItems是一个数组
    [UIApplication sharedApplication].shortcutItems = @[item,item1,item2];
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
