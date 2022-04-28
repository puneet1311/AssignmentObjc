//
//  RegisterViewController.m
//  AssignmentObjc
//
//  Created by p.dhalpe on 27/04/22.
//

#import "RegisterViewController.h"
#import "RegisterViewModel.h"
#import "ALertFile.h"
#import "KeychainItemWrapper.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)registerButtonAction:(UIButton *)sender {
    
    ALertFile *alert = [[ALertFile alloc]init];
    RegisterViewModel *registerObj = [[RegisterViewModel alloc] init];
    
    /// Temporary storing text field text into variables.
    NSString *userName = _usernameTextField.text;
    NSString *email = _emailtextField.text;
    NSString *password = _passwordTextField.text;
    
    [registerObj registerWithEmail:email password:password username:userName completion:^(NSString* message) {
        if ([message  isEqual: @"Username Required"]) {
            [alert showAlertMsg:self title:@"Username" message:@"Username Is Required"];
        } else if ([message  isEqual: @"Email Required"]) {
            [alert showAlertMsg:self title:@"Email" message:@"Email Is Required"];
        } else if ([message  isEqual: @"Password Required"]) {
            [alert showAlertMsg:self title:@"Password" message:@"Password Is Required"];
        }  else if ([message  isEqual: @"Proper Email validate"]) {
            [alert showAlertMsg:self title:@"Email" message:@"Enter Proper Email-id"];
        } else if ([message  isEqual: @"Password Validate"]) {
            [alert showAlertMsg:self title:@"Password" message:@"Password must be minimum 8 characters,at least 1 Uppercase Alphabet, 1 Lowercase Alphabet,1 Number and 1 Special Character"];
        } else {
            [alert showAlertMsg:self title:@"Alert" message:@"Successful"];
            KeychainItemWrapper *keychainItem = [[KeychainItemWrapper alloc] initWithIdentifier:@"YourAppLogin" accessGroup:nil];
            [keychainItem setObject:password forKey:(__bridge id)kSecValueData];
            [keychainItem setObject:email forKey:(__bridge id)kSecAttrAccount];
            [self clearText];
        }
    }];
}

-(void)clearText {
    _usernameTextField.text = @"";
    _emailtextField.text = @"";
    _passwordTextField.text = @"";
}

@end
