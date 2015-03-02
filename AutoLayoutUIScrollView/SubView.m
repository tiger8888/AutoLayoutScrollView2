//
//  SubView.m
//  AutoLayoutUIScrollView
//
//  Created by sbx_fc on 15-3-2.
//  Copyright (c) 2015年 RG. All rights reserved.
//

#import "SubView.h"

@interface SubView ()

@property(nonatomic, weak) IBOutlet UILabel *textLabel;

@end

@implementation SubView

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self performSelectorOnMainThread:@selector(adjustScrollContentSizeOnMainThread) withObject:nil    waitUntilDone:NO];
}

- (void)adjustScrollContentSizeOnMainThread
{
    self.textLabel.preferredMaxLayoutWidth = self.textLabel.bounds.size.width;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.textLabel.text = @"中计的敌人城市无法调动军队出城。1点学识可持续1分钟。中计的城市在6小时内不会再次中计。可用<突出重围>破解。";

}

@end
