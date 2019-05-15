//
//  MMLayer.m
//  CALayer—learingDemo
//
//  Created by mac on 2019/5/15.
//  Copyright © 2019 姜凯文. All rights reserved.
//

#import "MMLayer.h"

@implementation MMLayer

- (instancetype)init{
    self = [super init];
    if (self) {
        NSLog(@">>>>>>>>>>> MMLayer init");
    }
    return self;
}

+ (Class)layerClass{
    NSLog(@">>>>>>>>>>> MMLayer class");
    return [MMLayer class];
}

- (void)setFrame:(CGRect)frame{
    NSLog(@">>>>>>>>>>> MMLayer setFrame");
    [super setFrame:frame];
}

- (void)setPosition:(CGPoint)position{
    NSLog(@">>>>>>>>>>> MMLayer setPosition");
    [super setPosition:position];
}

- (void)setBounds:(CGRect)bounds{
    NSLog(@">>>>>>>>>>> MMLayer setBounds");
    [super setBounds:bounds];
}

@end
