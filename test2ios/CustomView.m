//
//  CustomView.m
//  test2ios
//
//  Created by magicma on 2018/8/2.
//  Copyright © 2018年 magicma. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)layoutSubviews
{
    NSLog(@"@23");
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
}
@end
