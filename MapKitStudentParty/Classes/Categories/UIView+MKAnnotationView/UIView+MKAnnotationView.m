//
//  UIView+MKAnnotationView.m
//  MapKitStudentParty
//
//  Created by Eugene Sokolenko on 01.07.16.
//  Copyright (c) 2016 Anastasia Markovskaya. All rights reserved.
//

#import "UIView+MKAnnotationView.h"

#import <MapKit/MKAnnotationView.h>

@implementation UIView (MKAnnotationView)

- (MKAnnotationView *)currentAnnotationView
{
    if ([self isKindOfClass:[MKAnnotationView class]]) {
        return (MKAnnotationView *)self;
    }
    
    if (!self.superview) {
        return nil;
    }
    
    return [self.superview currentAnnotationView];
}

@end
