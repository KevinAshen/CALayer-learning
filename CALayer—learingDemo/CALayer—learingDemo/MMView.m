//
//  MMView.m
//  CALayer—learingDemo
//
//  Created by mac on 2019/5/15.
//  Copyright © 2019 姜凯文. All rights reserved.
//

#import "MMView.h"
#import "MMLayer.h"

@implementation MMView

- (instancetype)init{
    self = [super init];
    if (self) {
        NSLog(@">>>>>>>>>>> MMView init");
    }
    return self;
}


+ (Class)layerClass{
    NSLog(@">>>>>>>>>>> MMView layerClass");
    return [MMLayer class];
}

- (void)setFrame:(CGRect)frame{
    NSLog(@">>>>>>>>>>> MMView setFrame");
    [super setFrame:frame];
}

- (void)setCenter:(CGPoint)center{
    NSLog(@">>>>>>>>>>> MMView setCenter");
    [super setCenter:center];
}

- (void)setBounds:(CGRect)bounds{
    NSLog(@">>>>>>>>>>> MMView setBounds");
    [super setBounds:bounds];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
