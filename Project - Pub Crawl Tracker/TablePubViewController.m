//
//  TablePubViewController.m
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "TablePubViewController.h"
#import "PubDataModel.h"

@interface TablePubViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation TablePubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = [[PubDataModel alloc] init];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    NSInteger numberOfRows;
    numberOfRows = _data.pubArray.count;
    return numberOfRows;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;{
    static NSString *cellid = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    
    Pub *TempPub = [self.data.pubArray objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:TempPub.logo];
    cell.textLabel.text = TempPub.name;
    cell.detailTextLabel.text = TempPub.postcode;
    
    return cell;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
