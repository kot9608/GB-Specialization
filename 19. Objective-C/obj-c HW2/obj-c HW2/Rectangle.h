//
//  Restangle.h
//  obj-c HW2
//
//  Created by MacOSX on 04.04.2024.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : Figure {
    @private NSString *_name;
    @private NSInteger _hight;
    @private NSInteger _width;
}

-(instancetype)initHW: (NSInteger)hight width:(NSInteger)width;
-(NSInteger)areaCalculation;
-(NSInteger)perimetrCalculation;
-(void)figureInformation;

@end

NS_ASSUME_NONNULL_END
