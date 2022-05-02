//
//  DetailsViewController.h
//  AssignmentObjc
//
//  Created by p.dhalpe on 28/04/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *detailsTableView;
@property (nonatomic, strong) NSMutableArray *dataArray;
@end

NS_ASSUME_NONNULL_END
