//
//  RegisterViewModel.m
//  AssignmentObjc
//
//  Created by p.dhalpe on 28/04/22.
//

#import "RegisterViewModel.h"
#import "EmailValidation.h"
#import "PasswordValidation.h"

@implementation RegisterViewModel: NSObject
- (void)registerWithEmail:(NSString *)email password:(NSString *)password username:(NSString *)username completion:(void (^)(NSString* success))completionBlock{
    EmailValidation *emailvalidation = [[EmailValidation alloc] init];
    PasswordValidation *passwordValidaton = [[PasswordValidation alloc] init];
    if ([username  isEqual: @""]) completionBlock(@"Username Required");
    else if ([email  isEqual: @""]) completionBlock(@"Email Required");
    else if(![emailvalidation validateEmailWithString:email]) completionBlock(@"Proper Email validate");
    else if ([password  isEqual: @""]) completionBlock(@"Password Required");
    else if(![passwordValidaton isValidPassword:password]) completionBlock(@"Password Validate");
    else completionBlock(@"success");
}
@end
