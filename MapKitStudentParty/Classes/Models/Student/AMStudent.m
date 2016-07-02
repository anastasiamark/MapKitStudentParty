//
//  AMStudent.m
//  MapKitStudentParty
//
//  Created by Eugene Sokolenko on 01.07.16.
//  Copyright (c) 2016 Anastasia Markovskaya. All rights reserved.
//

#import "AMStudent.h"

@implementation AMStudent

#pragma mark - Lifecycle

- (instancetype)initWithGender:(AMStudentGender)gender firstName:(NSString *)firstName lastName: (NSString *)lastName dateOfBirth:(NSDate *)dateOfBirth andLocationCoordinate:(CLLocationCoordinate2D)coordinate
{
    self = [super init];
    if (self) {
        _gender = gender;
        _firstName = firstName;
        _lastName = lastName;
        _dateOfBirth = dateOfBirth;
        _coordinate = coordinate;
    }
    return self;
}

+ (instancetype)studentWithGender:(AMStudentGender)gender firstName:(NSString *)firstName lastName: (NSString *)lastName dateOfBirth:(NSDate *)dateOfBirth andLocationCoordinate:(CLLocationCoordinate2D)coordinate
{
    return [[self alloc] initWithGender:gender firstName:firstName lastName:lastName dateOfBirth:dateOfBirth andLocationCoordinate:coordinate];
}

@end
