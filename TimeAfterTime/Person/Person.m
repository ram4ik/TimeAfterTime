//
//  Person.m
//  TimeAfterTime
//
//  Created by Ramill Ibragimov on 15.05.2021.
//

#import "Person.h"
#import <Foundation/Foundation.h>

@implementation Person

- (void) setHeightInMeters:(float)h
{
    heightInMeters = h;
}

- (void) setWeightInKilos:(int)w
{
    weightInKilos = w;
}

- (float) bodyMassIndex
{
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end
