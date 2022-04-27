//
//  LoginViewController.m
//  AssignmentObjc
//
//  Created by p.dhalpe on 27/04/22.
//

#import "LoginViewController.h"
#import "KeychainItemWrapper.h"
#import "LoginViewModel.h"
#import "RegisterViewController.h"
#import "ALertFile.h"
#import "ConstantsFile.h"


/// Taken reference from this link :- https://stackoverflow.com/a/30804898
@interface LoginViewController ()<UITextFieldDelegate>

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:true];
    /// Initially we keep textfields empty.
    _usernameTextField.text = @"";
    _passwordTextField.text = @"";
}

/// IB actions
- (IBAction)loginButtonAction:(UIButton *)sender {
    NSLog(@"Hello");
    ALertFile *alert = [[ALertFile alloc]init];
    LoginViewModel *loginObject = [[LoginViewModel alloc] init];
    
    NSString *email = _usernameTextField.text;
    NSString *password = _passwordTextField.text;
    
    [loginObject loginWithEmail:email password:password completion:^(NSString * message) {
        if ([message  isEqual: blank_Email]) {
            [alert showAlertMsg:self title:emailText message:blank_Email];
        } else if ([message  isEqual: blank_Password]) {
            [alert showAlertMsg:self title:passwordText message:blank_Password];
        }  else if ([message  isEqual: validate_Email]) {
            [alert showAlertMsg:self title:emailText message:validate_Email_Message];
        } else if ([message  isEqual: validate_Password]) {
            [alert showAlertMsg:self title:passwordText message:validate_Password_Message];
        } else {
            KeychainItemWrapper *keychainItem = [[KeychainItemWrapper alloc] initWithIdentifier:@"YourAppLogin" accessGroup:nil];
            NSData *password22 = [keychainItem objectForKey:(__bridge id)kSecValueData];
            NSString *emailData = [keychainItem objectForKey:(__bridge id)kSecAttrAccount];
            NSString* passwordValue = [[NSString alloc] initWithData:password22 encoding:NSUTF8StringEncoding];
            if ([self.usernameTextField.text isEqual:emailData] && [self.passwordTextField.text isEqual:passwordValue]) {
                NSLog(@"Success");
            } else {
                [alert showAlertMsg:self title:alertMessage message:userNotFound];
            }
            
        }
    }];
    
}

- (IBAction)registerButtonAction:(UIButton *)sender {
}

/// Text field delegate methods


@end
