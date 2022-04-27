//
//  LoginViewController.h
//  AssignmentObjc
//
//  Created by p.dhalpe on 27/04/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;
- (IBAction)loginButtonAction:(UIButton *)sender;
- (IBAction)registerButtonAction:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
