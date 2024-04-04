//
//  Circle.m
//  obj-c HW2
//
//  Created by MacOSX on 04.04.2024.
//

#import "Circle.h"

@implementation Circle

- (instancetype)initRadius:(NSInteger)radius {
    self = [super init];
    if (self){
        _radius = radius;
        _name = @"Circle";
    }
    return self;
}

- (double)areaCalculation {
    return M_PI * _radius * _radius;
}

- (double)circumferenceOfTheCircle {
    return 2 * M_PI * _radius;
}

- (void)figureInformation {
    NSLog(@"I'm a figure called is %@", _name);
    NSLog(@"My area %.2f",[self areaCalculation]);
    NSLog(@"My perimetr %2f", [self circumferenceOfTheCircle]);
}

@end
