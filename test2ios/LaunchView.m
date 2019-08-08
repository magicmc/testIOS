//
//  LaunchView.m
//  test2ios
//
//  Created by magicma on 2019/8/1.
//  Copyright © 2019 magicma. All rights reserved.
//

#import "LaunchView.h"

#import <objc/runtime.h>

@implementation UILabel (Tracking)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        
        //        - (void)drawRect:(CGRect)rect
        SEL originalSelector = @selector(drawRect:);
        SEL swizzledSelector = @selector(xxx_drawRect:);
        
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        // When swizzling a class method, use the following:
        // Class class = object_getClass((id)self);
        // ...
        // Method originalMethod = class_getClassMethod(class, originalSelector);
        // Method swizzledMethod = class_getClassMethod(class, swizzledSelector);
        
        BOOL didAddMethod =
        class_addMethod(class,
                        originalSelector,
                        method_getImplementation(swizzledMethod),
                        method_getTypeEncoding(swizzledMethod));
        
        if (didAddMethod) {
            class_replaceMethod(class,
                                swizzledSelector,
                                method_getImplementation(originalMethod),
                                method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

#pragma mark - Method Swizzling

- (void)xxx_drawRect:(CGRect)rect {
    [self xxx_drawRect:rect];
    NSLog(@"@69");
}

@end
