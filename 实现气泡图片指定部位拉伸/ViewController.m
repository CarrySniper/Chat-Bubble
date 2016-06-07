//
//  ViewController.m
//  实现气泡图片指定部位拉伸
//
//  Created by 思久科技 on 16/6/7.
//  Copyright © 2016年 Seejoys. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;

@property (weak, nonatomic) IBOutlet UIImageView *imageView2;

@property (weak, nonatomic) IBOutlet UIImageView *imageView3;

@property (weak, nonatomic) IBOutlet UIImageView *imageView4;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UIImageView *imageV1;

@property (weak, nonatomic) IBOutlet UIImageView *imageV2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"bubble_image"];
    
    self.imageView1.contentMode = UIViewContentModeCenter;
    self.imageView1.image = image;
    
    self.imageView2.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView2.image = image;
    
    self.imageView3.contentMode = UIViewContentModeScaleToFill;
    self.imageView3.image = image;
    
    self.imageView4.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView4.image = image;
    
    //需要的效果图
    CGFloat top = 15;       // 顶端盖高度
    CGFloat bottom = 15 ;   // 底端盖高度
    CGFloat left = 8;       // 左端盖宽度
    CGFloat right = 25;     // 右端盖宽度
    UIEdgeInsets insets = UIEdgeInsetsMake(top, left, bottom, right);
    
    //不让图片拉伸变形 端盖(end cap)的概念 拉伸UIEdgeInsets内区域
    /*
     NS_AVAILABLE_IOS(5_0);
     - (UIImage *)resizableImageWithCapInsets:(UIEdgeInsets)capInsets
     
     */
    
    /*
     NS_AVAILABLE_IOS(6_0);
     - (UIImage *)resizableImageWithCapInsets:(UIEdgeInsets)capInsets
     resizingMode:(UIImageResizingMode)resizingMode
     
     UIImageResizingModeStretch：拉伸模式，通过拉伸UIEdgeInsets指定的矩形区域来填充图片
     UIImageResizingModeTile：平铺模式，通过重复显示UIEdgeInsets指定的矩形区域来填充图片
     */
    UIImage *bubbleImage = [image resizableImageWithCapInsets:insets
                                  resizingMode:UIImageResizingModeStretch];
    
    self.imageView.image = bubbleImage;
    
    self.imageV1.image = bubbleImage;
    
    self.imageV2.image = bubbleImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
