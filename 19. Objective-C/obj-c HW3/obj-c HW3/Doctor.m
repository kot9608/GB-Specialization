//
//  Doctor.m
//  obj-c HW3
//
//  Created by Elena on 02.04.2024.
//

#import "Doctor.h"
#import "Pill.h"

@implementation Doctor

- (void) givePill {
    NSLog(@"Doctor prescribed medication");
    [self.delegate eatPill];
    
}

@end
