//
//  MyScrollView.m
//  AutoLayoutUIScrollView
//
//  Created by sbx_fc on 15-3-1.
//  Copyright (c) 2015年 RG. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()

@property(nonatomic, weak) IBOutlet UIView *topSubView;

@end


@implementation MyScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)awakeFromNib {
    [super awakeFromNib];
    
    //设置顶部View的高度
//    [self.topSubView addConstraint:[NSLayoutConstraint
//                                 constraintWithItem:self.topSubView
//                                 attribute:NSLayoutAttributeHeight
//                                 relatedBy:NSLayoutRelationEqual
//                                 toItem:nil
//                                 attribute:NSLayoutAttributeNotAnAttribute
//                                 multiplier:1
//                                 constant:250]];
    
    [self loadSubView];
    
}



-(void)loadSubView
{
    UIView *subView = [[[NSBundle mainBundle] loadNibNamed:@"SubView" owner:self options:nil] firstObject];
    [self.topSubView addSubview:subView];
    
    subView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.topSubView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.topSubView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0f]];
    [self.topSubView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.topSubView attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0f]];
    [self.topSubView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.topSubView attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0f]];
    [self.topSubView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.topSubView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0f]];
}

@end
