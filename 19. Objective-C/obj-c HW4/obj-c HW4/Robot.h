//
//  Robot.h
//  obj-c HW4
//
//  Created by Elena on 05.04.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject

@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;

-(void) run: (NSString * (^)(void)) moveTo;
-(void) print;

@end

NS_ASSUME_NONNULL_END
