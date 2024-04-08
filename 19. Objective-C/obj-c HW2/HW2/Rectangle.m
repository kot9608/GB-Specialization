//
//  Restangle.m
//  obj-c HW2
//
//  Created by MacOSX on 04.04.2024.
//

#import "Rectangle.h"

@implementation Rectangle

- (instancetype)initHW:(NSInteger)hight width:(NSInteger)width{
    if (self){
        _hight = hight;
        _width = width;
        _name = @"Rectangle";
    }
    return self;
}

- (NSInteger)areaCalculation {
    return _hight * _width;
}

- (NSInteger)perimetrCalculation {
    return 2 * (_hight + _width);
}

- (void)figureInformation {
    NSLog(@"I'm a figure called is %@", _name);
    NSLog(@"My area %ld", (long)[self areaCalculation]);
    NSLog(@"My perimetr %ld", (long)[self perimetrCalculation]);
}

@end
