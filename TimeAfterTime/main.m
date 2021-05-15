//
//  main.m
//  TimeAfterTime
//
//  Created by Ramill Ibragimov on 15.05.2021.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The new date lives at %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSInteger day = [cal ordinalityOfUnit: NSCalendarUnitDay inUnit: NSCalendarUnitMonth forDate: now];
        NSLog(@"This is day %lu of the month", day);
        
        NSString *lament = @"Why me?";
        NSString *x = [NSString stringWithFormat:@"The best number is %d", 42];
        NSInteger charCount = [x length];
        NSLog(@"x count is: %ld", (long)charCount);
        
        if ([lament isEqual:x])
            NSLog(@"%@ and %@ are equal", lament, x);
        
        NSDate *tomorrow = [now dateByAddingTimeInterval: 24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval: -24.0 * 60.0 * 60.0];
        
        NSArray *dateList = [NSArray arrayWithObjects: now, tomorrow, yesterday, nil];
        NSLog(@"There are %lu dates", [dateList count]);
        
        NSLog(@"The first date is %@", [dateList objectAtIndex: 0]);
        NSLog(@"The second date is %@", [dateList objectAtIndex: 1]);
        NSLog(@"The third date is %@", [dateList objectAtIndex: 2]);
        
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = [dateList objectAtIndex: i];
            NSLog(@"Here is date: %@", d);
        }
        for (NSDate *d2 in dateList) {
            NSLog(@"Here is a date: %@", d2);
        }
        
        NSMutableArray *dateList2 = [NSMutableArray array];
        [dateList2 addObject: now];
        [dateList2 addObject: tomorrow];
        [dateList2 addObject: yesterday];
        
        [dateList2 insertObject: yesterday atIndex: 0];
        for (NSDate *d3 in dateList2) {
            NSLog(@"Here is a date: %@", d3);
        }
        [dateList2 removeObjectAtIndex: 0];
        NSLog(@"Now the first date is %@", [dateList2 objectAtIndex: 0]);
        
        
        Person *person = [[Person alloc] init];
        [person setWeightInKilos: 96];
        [person setHeightInMeters: 1.8];
        float bmi = [person bodyMassIndex];
        NSLog(@"person has a BMI if %f", bmi);
        
        
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        [dict setObject: @"Ana" forKey: @"1"];
        [dict setObject: @"John" forKey: @"2"];
        NSLog(@"names: %@", dict);
    }
    return 0;
}
