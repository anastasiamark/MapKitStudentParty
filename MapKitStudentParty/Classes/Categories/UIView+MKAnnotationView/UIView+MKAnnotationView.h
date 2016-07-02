//
//  UIView+MKAnnotationView.h
//  MapKitStudentParty
//
//  Created by Eugene Sokolenko on 01.07.16.
//  Copyright (c) 2016 Anastasia Markovskaya. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MKAnnotationView;

@interface UIView (MKAnnotationView)

- (MKAnnotationView *)currentAnnotationView;

@end