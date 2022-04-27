//
//  EmailValidation.m
//  AssignmentObjc
//
//  Created by p.dhalpe on 27/04/22.
//

#import "EmailValidation.h"

@implementation EmailValidation
/// Validation check for Email Address
- (BOOL)validateEmailWithString:(NSString*)email
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}
@end
