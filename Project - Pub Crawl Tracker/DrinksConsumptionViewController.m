//
//  DrinksConsumptionViewController.m
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DrinksConsumptionViewController.h"

@interface DrinksConsumptionViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation DrinksConsumptionViewController

- (void)viewDidLoad { //initalise the data
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.data = [[DrinksDataModel alloc] init];
    self.cellData = [[DrinksTableViewCell alloc] init];
    self.UnitsConsumedLabel.text = @"units consumed = 0";
    NSUserDefaults *drinksNumber = [NSUserDefaults standardUserDefaults];
    for (int i = 0; i < self.data.drinksArray.count; i++) { //go through the user defaults and update the data model
        self.cellData.numberStepper.value = [drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = %d",i]];
        Drinks *temp = [self.data.drinksArray objectAtIndex:i];
        temp.unitsConsumed = temp.units*[drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = %d",i]];
        [self.data.drinksArray replaceObjectAtIndex:i withObject:temp];
    }
    [self UpdateUnitConsumption]; //call method to update the label
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - tableView Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    NSInteger numberOfRows;
    if (section == 0) {
        numberOfRows = self.data.drinksArray.count; //use the array count so the code can adapt
    }
    return numberOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;{
    static NSString *cellid = @"cell";
    DrinksTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    
    Drinks *tempDrink = [self.data.drinksArray objectAtIndex:indexPath.row]; // for the row assign the correct information
    cell.drinkNameLabel.text = tempDrink.name;
    cell.numberDrunkLabel.text = [NSString stringWithFormat:@"%.0f", tempDrink.numberDrunk];
    cell.numberStepper.value = tempDrink.numberDrunk;
    cell.numberDrunkLabel.tag = indexPath.row;  //assign tags so they can be refered to in other methods
    cell.numberStepper.tag = indexPath.row;

    
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;  {            // Default is 1
    return 1;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
    
#pragma mark - table Cell Actions
- (IBAction)stepperChanged:(UIStepper *)sender {  //when the stepper is changed implement the method to update the units this corrisponds to
    NSUserDefaults *drinksNumber = [NSUserDefaults standardUserDefaults];
    
    Drinks *temp = [self.data.drinksArray objectAtIndex:sender.tag];
    temp.unitsConsumed = temp.units*[drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = %ld",(long)sender.tag]]; //recall user defaults
     [self.data.drinksArray replaceObjectAtIndex:sender.tag withObject:temp]; // update instance of data model
    NSLog(@"%@", [NSString stringWithFormat:@"Units consumed = %.2f", temp.unitsConsumed]);
    [self UpdateUnitConsumption]; //call method to update the comsumption values
    
}
#pragma mark - General Methods
- (void) UpdateUnitConsumption{ // calculates the consumption for each type of drink and sums them to get total
    float totalConsumption = 0.0;
        for (int i = 0; i < self.data.drinksArray.count; i++) {
            Drinks *temp = [self.data.drinksArray objectAtIndex:i];
            totalConsumption = totalConsumption+temp.unitsConsumed;
    }
    self.UnitsConsumedLabel.text = [NSString stringWithFormat:@"Units consumed = %.2f", totalConsumption];
}

- (void) UpdatePressed:(UIButton *)sender{ //methods to set all values back to zero
    NSUserDefaults *drinksNumber = [NSUserDefaults standardUserDefaults];
    for (int i = 0; i < self.data.drinksArray.count; i++) { //go through all saved values
        [drinksNumber setInteger:0 forKey:[NSString stringWithFormat:@" Drunk = %d",i]]; //set integer to zero
        [drinksNumber setObject:@"0" forKey:[NSString stringWithFormat:@" Drunk = %d",i]]; //set string to zero
        [drinksNumber synchronize]; // force update
        self.cellData.numberStepper.value = [drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = %d",i]];  //update the display
        self.cellData.numberDrunkLabel.text = [NSString stringWithFormat:@"%@", [drinksNumber stringForKey:[NSString stringWithFormat:@" Drunk = %d",i]]];//update the display
        Drinks *temp = [self.data.drinksArray objectAtIndex:i];
        temp.unitsConsumed = temp.units*[drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = %d",i]];
        [self.data.drinksArray replaceObjectAtIndex:i withObject:temp]; // update the instance
    }
    [self UpdateUnitConsumption]; // call method to update calculated values
    self.tableView.reloadData; // refresh the table to show the updates
}
@end
