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
    
    
    self.data = [[PubDataModel alloc] init]; //initalise the data from the data model
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
    numberOfRows = self.data.pubArray.count; // use the array count so automatically adjusts when new datta is added.
    return numberOfRows;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;{
    static NSString *cellid = @"cell";
    TablePubViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    
    //set the data to show in the cell
        Pub *TempPub = [self.data.pubArray objectAtIndex:indexPath.row];
        cell.cellImage.image = [UIImage imageNamed:TempPub.logo];
        cell.nameLabel.text = TempPub.name;
        cell.cellSwitchOutlet.on = TempPub.include;
        cell.cellSwitchOutlet.tag = indexPath.row; // a tag allows it to be called in another method
    
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
- (IBAction)SwitchChanged:(UISwitch *)sender { // method to save the state of the switch when it is changed
    
    NSLog(@"tag = %ld", sender.tag);
    Pub *temp = [self.data.pubArray objectAtIndex:sender.tag]; // get the data corrispondining to the correct row
    if(sender.on == true){ //test the data
        temp.include = true;
        [self.data.pubArray replaceObjectAtIndex:sender.tag withObject:temp]; // update the property in the temporary instance of the data
        NSLog(@"%hhu",temp.include);
    } else {
        temp.include = false;
        [self.data.pubArray replaceObjectAtIndex:sender.tag withObject:temp];
        NSLog(@"%hhu",temp.include);
        
    }
    //update the user defaults so the data can be recalled
    NSUserDefaults *switchState = [NSUserDefaults standardUserDefaults];
    [switchState setBool:temp.include forKey:[NSString stringWithFormat:@"SwitchState %d",(int)sender.tag]];
    [switchState synchronize];
    
}
@end
