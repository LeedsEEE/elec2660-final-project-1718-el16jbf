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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.data = [[DrinksDataModel alloc] init];
    self.cellData = [[DrinksTableViewCell alloc] init];
    self.UnitsConsumedLabel.text = @"units consumed = 0";
    NSUserDefaults *drinksNumber = [NSUserDefaults standardUserDefaults];
    for (int i = 0; i < self.data.drinksArray.count; i++) {
        self.cellData.numberStepper.value = [drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = %d",i]];
        Drinks *temp = [self.data.drinksArray objectAtIndex:i];
        temp.unitsConsumed = temp.units*[drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = %d",i]];
        [self.data.drinksArray replaceObjectAtIndex:i withObject:temp];
    }
    [self UpdateUnitConsumption];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    NSInteger numberOfRows;
    if (section == 0) {
        numberOfRows = self.data.drinksArray.count;
    }
    return numberOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;{
    static NSString *cellid = @"cell";
    DrinksTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    
    if (indexPath.section == 0) {
        Drinks *tempDrink = [self.data.drinksArray objectAtIndex:indexPath.row];
        cell.drinkNameLabel.text = tempDrink.name;
        cell.numberDrunkLabel.text = [NSString stringWithFormat:@"%.0f", tempDrink.numberDrunk];
        cell.numberStepper.value = tempDrink.numberDrunk;
        cell.numberDrunkLabel.tag = indexPath.row;
        cell.numberStepper.tag = indexPath.row;
    }
    
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;  {            // Default is 1 if not implemented
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
    

- (IBAction)stepperChanged:(UIStepper *)sender {
    NSUserDefaults *drinksNumber = [NSUserDefaults standardUserDefaults];
    
    Drinks *temp = [self.data.drinksArray objectAtIndex:sender.tag];
    temp.unitsConsumed = temp.units*[drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = %ld",(long)sender.tag]];
     [self.data.drinksArray replaceObjectAtIndex:sender.tag withObject:temp];
    NSLog(@"%@", [NSString stringWithFormat:@"Units consumed = %.2f", temp.unitsConsumed]);
    [self UpdateUnitConsumption];
    
}

- (void) UpdateUnitConsumption{
    float totalConsumption = 0.0;
        for (int i = 0; i < self.data.drinksArray.count; i++) {
            Drinks *temp = [self.data.drinksArray objectAtIndex:i];
            totalConsumption = totalConsumption+temp.unitsConsumed;
    }
    self.UnitsConsumedLabel.text = [NSString stringWithFormat:@"Units consumed = %.2f", totalConsumption];
}

- (void) UpdatePressed:(UIButton *)sender{
    NSUserDefaults *drinksNumber = [NSUserDefaults standardUserDefaults];
    for (int i = 0; i < self.data.drinksArray.count; i++) {
        [drinksNumber setInteger:0 forKey:[NSString stringWithFormat:@" Drunk = %d",i]];
        [drinksNumber setObject:@"0" forKey:[NSString stringWithFormat:@" Drunk = %d",i]];
        [drinksNumber synchronize];
        self.cellData.numberStepper.value = [drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = %d",i]];
        self.cellData.numberDrunkLabel.text = [NSString stringWithFormat:@"%@", [drinksNumber stringForKey:[NSString stringWithFormat:@" Drunk = %d",i]]];
        Drinks *temp = [self.data.drinksArray objectAtIndex:i];
        temp.unitsConsumed = temp.units*[drinksNumber integerForKey:[NSString stringWithFormat:@" Drunk = %d",i]];
        [self.data.drinksArray replaceObjectAtIndex:i withObject:temp];
    }
    [self UpdateUnitConsumption];
}
@end
