//
//  RegisterViewController.h
//  AssignmentObjc
//
//  Created by p.dhalpe on 27/04/22.
//

#import <UIKit/UIKit.h>
#import "ALertFile.h"
#import "RegisterViewModel.h"
#import "KeychainItemWrapper.h"

NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewController : UIViewController
/// IB Outlets
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailtextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;
/// IB Actions
- (IBAction)registerButtonAction:(UIButton *)sender;
/// Method or Function
-(void)clearText;

@end

NS_ASSUME_NONNULL_END
