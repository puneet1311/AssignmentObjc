//
//  LoginViewModel.h
//  AssignmentObjc
//
//  Created by p.dhalpe on 27/04/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewModel : NSObject
- (void)loginWithEmail:(NSString *)email password:(NSString *)password completion:(void (^)(NSString* success))completionBlock;
@end

NS_ASSUME_NONNULL_END
