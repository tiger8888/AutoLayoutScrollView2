//
//  ViewController.m
//  AutoLayoutUIScrollView
//
//  Created by sbx_fc on 15-3-1.
//  Copyright (c) 2015年 RG. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //加载xib文件
    [self loadScrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 * 加载xib,并设置布局全屏显示。
*/
-(void)loadScrollView
{
    MyScrollView *myScrollView = [[[NSBundle mainBundle] loadNibNamed:@"MyScrollView" owner:self options:nil] firstObject];
    [self.view addSubview:myScrollView];
    
    myScrollView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:myScrollView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:myScrollView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:myScrollView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:myScrollView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0f]];
}

@end
