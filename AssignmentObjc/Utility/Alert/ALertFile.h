//
//  ALertFile.h
//  AssignmentObjc
//
//  Created by p.dhalpe on 27/04/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALertFile : NSObject
- (void) showAlertMsg:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message;
@end

NS_ASSUME_NONNULL_END
