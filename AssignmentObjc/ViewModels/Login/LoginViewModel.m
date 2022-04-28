//
//  LoginViewModel.m
//  AssignmentObjc
//
//  Created by p.dhalpe on 27/04/22.
//

#import "LoginViewModel.h"
#import "EmailValidation.h"
#import "PasswordValidation.h"

@implementation LoginViewModel: NSObject

- (void)loginWithEmail:(NSString *)email password:(NSString *)password completion:(void (^)(NSString * _Nonnull))completionBlock{
    EmailValidation *emailvalidation = [[EmailValidation alloc] init];
    PasswordValidation *passwordValidaton = [[PasswordValidation alloc] init];
    
    if ([email  isEqual: @""]) completionBlock(@"Email Required");
    else if(![emailvalidation validateEmailWithString:email]) completionBlock(@"Proper Email validate");
    else if ([password  isEqual: @""]) completionBlock(@"Password Required");
    else if(![passwordValidaton isValidPassword:password]) completionBlock(@"Password Validate");
    else completionBlock(@"success");
    
    
//    if ([email  isEqual: @""]) completionBlock(@"Email Required"); ?
//    (![emailvalidation validateEmailWithString:email]) completionBlock(@"Proper Email validate") ?
//    ([password  isEqual: @""]) completionBlock(@"Password Required") ?
//    (![passwordValidaton isValidPassword:password]) completionBlock(@"Password Validate") ! completionBlock(@"success");
    
    
}
@end
