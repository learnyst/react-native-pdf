//
//  SecurePdfView.m
//  RCTPdf
//
//  Created by Sridhar on 9/10/18.
//  Copyright © 2018 wonday.org. All rights reserved.
//

#import "SecurePdfView.h"

@implementation SecurePdfView

-(void) addGestureRecognizer:(UIGestureRecognizer *)gestureRecognizer {
    if([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]]) {
        [gestureRecognizer setEnabled:false];
    }
}

-(BOOL) canPerformAction:(SEL)action withSender:(id)sender {
    return false;
}

@end
