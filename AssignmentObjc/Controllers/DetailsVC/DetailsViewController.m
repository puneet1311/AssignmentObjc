//
//  DetailsViewController.m
//  AssignmentObjc
//
//  Created by p.dhalpe on 28/04/22.
//

#import "DetailsViewController.h"
#import "DetailsTableViewCell.h"
#import "KeychainItemWrapper.h"

@interface DetailsViewController ()<UITableViewDataSource>

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self getDataFrom:@"https://randomuser.me/api/?results=8"];
}

- (void) getDataFrom:(NSString *)url{
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    [request setURL:[NSURL URLWithString:url]];
    
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:
      ^(NSData * _Nullable data,
        NSURLResponse * _Nullable response,
        NSError * _Nullable error) {
        NSDictionary *results = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        self.dataArray= results[@"results"];
        NSLog(@"Data Array: %@", self.dataArray);
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.detailsTableView reloadData];
        });
        
    }] resume];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *cellReuseID = @"DetailsTableViewCell";
    DetailsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseID];
    NSString *str = [NSString stringWithFormat: @"%@ %@ %@",
                     self.dataArray[indexPath.row][@"name"][@"title"],self.dataArray[indexPath.row][@"name"][@"first"], self.dataArray[indexPath.row][@"name"][@"last"]];
    cell.personNameLabel.text = str;
    cell.personImageView.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:self.dataArray[indexPath.row][@"picture"][@"thumbnail"]]]];
    return cell;
}

@end
