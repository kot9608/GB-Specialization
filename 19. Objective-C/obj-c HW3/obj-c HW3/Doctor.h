//
//  Doctor.h
//  obj-c HW3
//
//  Created by Elena on 02.04.2024.
//

#import <Foundation/Foundation.h>
#import "Pill.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject
@property (nonatomic, weak, nullable) id <DoctorDelegate> delegate;
- (void) givePill;

@end

NS_ASSUME_NONNULL_END
