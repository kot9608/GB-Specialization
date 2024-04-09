//
//  Robot.m
//  obj-c HW4
//
//  Created by Elena on 05.04.2024.
//

#import "Robot.h"

@implementation Robot

- (instancetype)init {
    self = [super init];
    if (self) {
        self.x = 0;
        self.y = 0;
    }
    return  self;
}

- (void)run:(nonnull NSString * _Nonnull (^)(void))moveTo {
    NSString *movement = moveTo();
    if ([movement isEqualToString:@"up"]) {
        self.y ++;
    } else if ([movement isEqualToString:@"down"]){
        self.y --;
    } else if ([movement isEqualToString:@"left"]) {
        self.x --;
    } else if ([movement scriptingIsEqualTo:@"right"]) {
        self.x ++;
    }
    [self print];
}

- (void)print {
    NSLog(@"The current coordinates of the robot: (%ld, %ld)", self.x, self.y);
}

@end
