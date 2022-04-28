//
//  RegisterViewModel.h
//  AssignmentObjc
//
//  Created by p.dhalpe on 28/04/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewModel: NSObject
- (void)registerWithEmail:(NSString *)email password:(NSString *)password username:(NSString *)username completion:(void (^)(NSString* success))completionBlock;
@end

NS_ASSUME_NONNULL_END
