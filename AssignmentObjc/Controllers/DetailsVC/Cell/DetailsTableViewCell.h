//
//  DetailsTableViewCell.h
//  AssignmentObjc
//
//  Created by p.dhalpe on 02/05/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *personImageView;
@property (weak, nonatomic) IBOutlet UILabel *personNameLabel;

@end

NS_ASSUME_NONNULL_END
