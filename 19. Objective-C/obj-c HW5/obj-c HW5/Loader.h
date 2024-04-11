//
//  Loader.h
//  obj-c HW5
//
//  Created by Elena on 09.04.2024.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Loader : NSObject
@property (strong, nonatomic) NSURLSession *session;

-(void)performGetRequestFromURL:(NSString *) stringURL
                      arguments:(NSDictionary *) arguments
                          block:(void(^)(NSDictionary *, NSError *)) block;
-(void)performPostRequestFromURL:(NSString *) stringURL
                       arguments:(NSDictionary *) arguments
                           block:(void(^)(NSDictionary *, NSError *)) block;
-(NSDictionary *)parseJSONData:(NSData *) data error:(NSError **) error;
-(NSData *)dataFromJSON:(NSDictionary *) jsonDict error: (NSError **) error;
@end

NS_ASSUME_NONNULL_END
