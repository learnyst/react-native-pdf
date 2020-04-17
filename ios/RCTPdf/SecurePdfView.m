//
//  SecurePdfView.m
//  RCTPdf
//
//  Created by Sridhar on 9/10/18.
//  Copyright © 2018 wonday.org. All rights reserved.
//

#import "SecurePdfView.h"

@implementation SecurePdfView

//-(void) addGestureRecognizer:(UIGestureRecognizer *)gestureRecognizer {
//    if([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]]) {
//        [gestureRecognizer setEnabled:false];
//    }
//}
//
//-(BOOL) canPerformAction:(SEL)action withSender:(id)sender {
//    return false;
//}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    return NO;
}

-(void)addGestureRecognizer:(UIGestureRecognizer *)gestureRecognizer {
    gestureRecognizer.enabled = NO;

    if ([gestureRecognizer isKindOfClass:[UITapGestureRecognizer class]]) {
        NSInteger taps = ((UITapGestureRecognizer *)gestureRecognizer).numberOfTapsRequired;

        //[(UITapGestureRecognizer *)gestureRecognizer setNumberOfTapsRequired:1];
        if (taps == 1) {
            gestureRecognizer.enabled = YES;
        }
    }

    [super addGestureRecognizer:gestureRecognizer];

    return;
}

@end
