//
//  Person.h
//  TimeAfterTime
//
//  Created by Ramill Ibragimov on 15.05.2021.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}
- (void) setHeightInMeters: (float) h;
- (void) setWeightInKilos: (int) w;

- (float) bodyMassIndex;

@end
