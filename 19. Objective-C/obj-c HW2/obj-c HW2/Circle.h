//
//  Circle.h
//  obj-c HW2
//
//  Created by MacOSX on 04.04.2024.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : Figure{
    @private NSString *_name;
    @private NSInteger _radius;
}

-(instancetype)initRadius: (NSInteger)radius;
-(double)areaCalculation;
-(double)circumferenceOfTheCircle;
-(void)figureInformation;
@end

NS_ASSUME_NONNULL_END
