//
//  PubEntity+Add.m
//  Project - Pub Crawl Tracker
//
//  Created by Joshua Fincher [el16jbf] on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "PubEntity+Add.h"
#import "AppDelegate.h"

@implementation PubEntity (Add)

+ (PubEntity *)addPubInfoFromDictionary:(NSDictionary *)pubInfo
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [[appDelegate persistentContainer]viewContext];
    
    PubEntity *pubEntity = nil;
    
    NSString *postcode = pubInfo[@"postcode"];
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"PubsEntity"];
    request.predicate = [NSPredicate predicateWithFormat:@"postcode =%@", postcode];
    
    NSError *error;
    NSArray *matches = [context executeFetchRequest:request error:&error];
    
    if(!matches || error || ([matches count] >1)) {
        //do error code
    } else if ([matches count]) {
        pubEntity = [matches firstObject];
    }
    else {
        //Create new object
        pubEntity = [NSEntityDescription insertNewObjectForEntityForName:@"PubsEntity" inManagedObjectContext:context];
        
        pubEntity.name = [pubInfo valueForKey:@"name"];
        pubEntity.street = [pubInfo valueForKey:@"street"];
        pubEntity.town = [pubInfo valueForKey:@"town"];
        pubEntity.city = [pubInfo valueForKey:@"city"];
        pubEntity.postcode = [pubInfo valueForKey:@"postcode"];
        pubEntity.phoneNumber = [pubInfo valueForKey:@"phoneNumber"];
        pubEntity.rating = [pubInfo valueForKey:@"rating"];
    }
    
   
    
    return pubEntity;
}

@end
