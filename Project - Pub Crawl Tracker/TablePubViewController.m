//
//  TablePubViewController.m
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "TablePubViewController.h"
#import "PubDataModel.h"
#import "TablePubViewCell.h"

@interface TablePubViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation TablePubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.data = [[PubDataModel alloc] init];
    //self.userData = [[PubEntity alloc] init];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    NSInteger numberOfRows;
    if (section ==0) {
        numberOfRows = self.data.pubArray.count;
    } /*else if (section ==1) {
         code to count number of item in user added
      NSMutableArray *userPubsArray = [[NSMutableArray alloc] init];
       userPubsArray = [self.userData valueForKey:@"name"];
        numberOfRows = 1;//[userPubsArray count];
    }*/
    return numberOfRows;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;{
    static NSString *cellid = @"cell";
    TablePubViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    
    if (indexPath.section == 0){
        Pub *TempPub = [self.data.pubArray objectAtIndex:indexPath.row];
        cell.cellImage.image = [UIImage imageNamed:TempPub.logo];
        cell.nameLabel.text = TempPub.name;
        cell.cellSwitchOutlet.on = TempPub.include;
        cell.cellSwitchOutlet.tag = indexPath.row;
    } /*else if (indexPath.section == 1){
      enter details for user added pubs
      NSMutableArray *userPubsArray = [[NSMutableArray alloc] init];
     userPubsArray = [self.data valueForKey:@"name"];
    }*/
    
    return cell;
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
if([[segue identifier] isEqualToString:@"ShowPubDetails"])  {
    PubViewController *destinationViewController = [segue destinationViewController];
    NSIndexPath *indexPath = [self.table indexPathForSelectedRow];
    Pub *tempPub = [self.data.pubArray objectAtIndex:indexPath.row];
    destinationViewController.pub = tempPub;
}
}
- (IBAction)SwitchChanged:(UISwitch *)sender {
    
    NSLog(@"%ld", sender.tag);
    Pub *temp = [self.data.pubArray objectAtIndex:sender.tag];
    if(sender.on == true){
        temp.include = true;
        [self.data.pubArray replaceObjectAtIndex:sender.tag withObject:temp];
        NSLog(@"%hhu",temp.include);
    } else {
        temp.include = false;
        [self.data.pubArray replaceObjectAtIndex:sender.tag withObject:temp];
        NSLog(@"%hhu",temp.include);
        
    }
    
}
@end
