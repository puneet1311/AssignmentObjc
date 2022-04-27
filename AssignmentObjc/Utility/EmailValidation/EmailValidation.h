//
//  EmailValidation.h
//  AssignmentObjc
//
//  Created by p.dhalpe on 27/04/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EmailValidation : NSObject
- (BOOL)validateEmailWithString:(NSString*)email;
@end

NS_ASSUME_NONNULL_END
