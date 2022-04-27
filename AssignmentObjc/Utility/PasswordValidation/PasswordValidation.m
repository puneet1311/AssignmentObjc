//
//  PasswordValidation.m
//  AssignmentObjc
//
//  Created by p.dhalpe on 27/04/22.
//

#import "PasswordValidation.h"

@implementation PasswordValidation
/// Validation fir password.
-(BOOL)isValidPassword:(NSString *)passwordString
{
    NSString *stricterFilterString = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$@$!%*?&])[A-Za-z\\d$@$!%*?&]{8,}";
    NSPredicate *passwordTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", stricterFilterString];
    return [passwordTest evaluateWithObject:passwordString];
}
@end
