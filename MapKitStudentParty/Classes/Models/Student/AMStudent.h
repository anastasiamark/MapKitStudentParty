//
//  AMStudent.h
//  MapKitStudentParty
//
//  Created by Eugene Sokolenko on 01.07.16.
//  Copyright (c) 2016 Anastasia Markovskaya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CLLocation.h>

typedef enum : NSUInteger {
    AMStudentGenderMale,
    AMStudentGenderFemale
} AMStudentGender;

@interface AMStudent : NSObject

@property (strong, nonatomic, readonly) NSString *firstName;
@property (strong, nonatomic, readonly) NSString *lastName;

@property (strong, nonatomic, readonly) NSDate *dateOfBirth;

@property (assign, nonatomic, readonly) AMStudentGender gender;

@property (assign, nonatomic, readonly) CLLocationCoordinate2D coordinate;

+ (instancetype)studentWithGender:(AMStudentGender)gender firstName:(NSString *)firstName lastName: (NSString *)lastName dateOfBirth:(NSDate *)dateOfBirth andLocationCoordinate:(CLLocationCoordinate2D)coordinate;

@end
