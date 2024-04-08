//
//  Triangle.m
//  obj-c HW2
//
//  Created by MacOSX on 04.04.2024.
//

#import "Triangle.h"
#import "math.h"

@implementation Triangle

- (instancetype)initSideA:(NSInteger)sideA sideB:(NSInteger)sideB sideC:(NSInteger)sideC {
    self = [super init];
    if (self) {
        _sideA = sideA;
        _sideB = sideB;
        _sideC = sideC;
        _name = @"Triangle";
    }
    return self;
}

- (double)perimetrCalculation {
    return  _sideA + _sideA + _sideC;
}

- (double)areaCalculation {
    return sqrt(([self perimetrCalculation] / 2) * (([self perimetrCalculation] / 2) - _sideA * (([self perimetrCalculation] / 2) - _sideB) * (([self perimetrCalculation] / 2) - _sideC))) ;
}



- (void)figureInformation {
    NSLog(@"I'm a figure called is %@", _name);
    NSLog(@"My area %.2f",[self areaCalculation]);
    NSLog(@"My perimetr is %.2f", [self perimetrCalculation]);
}


@end
