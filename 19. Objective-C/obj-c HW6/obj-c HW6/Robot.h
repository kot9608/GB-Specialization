//
//  Robot.h
//  obj-c HW6
//
//  Created by Elena on 12.04.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject<NSCoding, NSSecureCoding>

@property (nonatomic, readonly) double xCoordinate;
@property (nonatomic, readonly) double yCoordinate;
@property (nonatomic, readonly) NSString *name;

- (instancetype)initWithName: (NSString *)name xCoordinate: (double)x yCoordinate: (double)y;

@end

NS_ASSUME_NONNULL_END
