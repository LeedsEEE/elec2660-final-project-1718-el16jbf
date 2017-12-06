//
//  DataModel.m
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "PubDataModel.h"

@implementation PubDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.pubArray = [NSMutableArray array];
        
        Pub *woodies = [[Pub alloc] init];
        woodies.name = @"Woodies Craft Ale House";
       woodies.street = @"2 Headingly Lane";
        woodies.town = @"Leeds";
        woodies.city = @"Leeds";
        woodies.postcode = @"LS6 2AS";
        woodies.phone = @"01132745597";
        woodies.rating = @"3.5";
        woodies.picture = @"Hyde Park Picture.jpg";
        woodies.logo = @"Hyde Park logo.jpg";
        woodies.latitude = 53.814942900313696;
        woodies.longitude = -1.5615661746868454;
        woodies.include = true;
        
        Pub *horseshoes = [[Pub alloc] init];
        horseshoes.name = @"The Hyde Park Pub";
        horseshoes.street = @"2 Headingly Lane";
        horseshoes.town = @"Leeds";
        horseshoes.city = @"Leeds";
        horseshoes.postcode = @"LS6 2AS";
        horseshoes.phone = @"01132745597";
        horseshoes.rating = @"3.5";
        horseshoes.picture = @"Hyde Park Picture.jpg";
        horseshoes.logo = @"Hyde Park logo.jpg";
        horseshoes.latitude = 53.814942900313696;
        horseshoes.longitude = -1.5615661746868454;
        horseshoes.include = true;

        Pub *new = [[Pub alloc] init];
        new.name = @"The Hyde Park Pub";
        new.street = @"2 Headingly Lane";
        new.town = @"Leeds";
        new.city = @"Leeds";
        new.postcode = @"LS6 2AS";
        new.phone = @"01132745597";
        new.rating = @"3.5";
        new.picture = @"Hyde Park Picture.jpg";
        new.logo = @"Hyde Park logo.jpg";
        new.latitude = 53.814942900313696;
        new.longitude = -1.5615661746868454;
        new.include = true;

        Pub *taps = [[Pub alloc] init];
        taps.name = @"The Hyde Park Pub";
        taps.street = @"2 Headingly Lane";
        taps.town = @"Leeds";
        taps.city = @"Leeds";
        taps.postcode = @"LS6 2AS";
        taps.phone = @"01132745597";
        taps.rating = @"3.5";
        taps.picture = @"Hyde Park Picture.jpg";
        taps.logo = @"Hyde Park logo.jpg";
        taps.latitude = 53.814942900313696;
        taps.longitude = -1.5615661746868454;
        taps.include = true;

        Pub *arc = [[Pub alloc] init];
        arc.name = @"The Hyde Park Pub";
        arc.street = @"2 Headingly Lane";
        arc.town = @"Leeds";
        arc.city = @"Leeds";
        arc.postcode = @"LS6 2AS";
        arc.phone = @"01132745597";
        arc.rating = @"3.5";
        arc.picture = @"Hyde Park Picture.jpg";
        arc.logo = @"Hyde Park logo.jpg";
        arc.latitude = 53.814942900313696;
        arc.longitude = -1.5615661746868454;
        arc.include = true;
        
        Pub *box = [[Pub alloc] init];
        box.name = @"The Hyde Park Pub";
        box.street = @"2 Headingly Lane";
        box.town = @"Leeds";
        box.city = @"Leeds";
        box.postcode = @"LS6 2AS";
        box.phone = @"01132745597";
        box.rating = @"3.5";
        box.picture = @"Hyde Park Picture.jpg";
        box.logo = @"Hyde Park logo.jpg";
        box.latitude = 53.814942900313696;
        box.longitude = -1.5615661746868454;
        box.include = true;

        Pub *skyrack = [[Pub alloc] init];
        skyrack.name = @"The Hyde Park Pub";
        skyrack.street = @"2 Headingly Lane";
        skyrack.town = @"Leeds";
        skyrack.city = @"Leeds";
        skyrack.postcode = @"LS6 2AS";
        skyrack.phone = @"01132745597";
        skyrack.rating = @"3.5";
        skyrack.picture = @"Hyde Park Picture.jpg";
        skyrack.logo = @"Hyde Park logo.jpg";
        skyrack.latitude = 53.814942900313696;
        skyrack.longitude = -1.5615661746868454;
        skyrack.include = true;

        Pub *oak = [[Pub alloc] init];
        oak.name = @"The Hyde Park Pub";
        oak.street = @"2 Headingly Lane";
        oak.town = @"Leeds";
        oak.city = @"Leeds";
         oak.postcode = @"LS6 2AS";
        oak.phone = @"01132745597";
        oak.rating = @"3.5";
        oak.picture = @"Hyde Park Picture.jpg";
        oak.logo = @"Hyde Park logo.jpg";
        oak.latitude = 53.814942900313696;
        oak.longitude = -1.5615661746868454;
        oak.include = true;
        
        Pub *hyde = [[Pub alloc] init];
        hyde.name = @"The Hyde Park Pub";
        hyde.street = @"2 Headingly Lane";
        hyde.town = @"Leeds";
        hyde.city = @"Leeds";
        hyde.postcode = @"LS6 2AS";
        hyde.phone = @"01132745597";
        hyde.rating = @"3.5";
        hyde.picture = @"Hyde Park Picture.jpg";
        hyde.logo = @"Hyde Park logo.jpg";
        hyde.latitude = 53.814942900313696;
        hyde.longitude = -1.5615661746868454;
        hyde.include = true;
        
        Pub *library = [[Pub alloc] init];
        library.name = @"The Library";
        library.street = @"229 Woodhouse Lane";
        library.town = @"Leeds";
        library.city = @"Leeds";
        library.postcode = @"LS2 3AP";
        library.phone = @"01132440794";
        library.rating = @"4.1";
        library.picture = @"Library Picture.jpg";
        library.logo = @"Library logo.jpg";
        library.latitude = 53.810657558956166;
        library.longitude = -1.5569058365234696;
        library.include = true;
        
        Pub *packhorse = [[Pub alloc] init];
        packhorse.name = @"The Hyde Park Pub";
        packhorse.street = @"2 Headingly Lane";
        packhorse.town = @"Leeds";
        packhorse.city = @"Leeds";
        packhorse.postcode = @"LS6 2AS";
        packhorse.phone = @"01132745597";
        packhorse.rating = @"3.5";
        packhorse.picture = @"Hyde Park Picture.jpg";
        packhorse.logo = @"Hyde Park logo.jpg";
        packhorse.latitude = 53.814942900313696;
        packhorse.longitude = -1.5615661746868454;
        packhorse.include = true;
        
        Pub *eldon = [[Pub alloc] init];
        eldon.name = @"The Hyde Park Pub";
        eldon.street = @"2 Headingly Lane";
        eldon.town = @"Leeds";
        eldon.city = @"Leeds";
        eldon.postcode = @"LS6 2AS";
        eldon.phone = @"01132745597";
        eldon.rating = @"3.5";
        eldon.picture = @"Hyde Park Picture.jpg";
        eldon.logo = @"Hyde Park logo.jpg";
        eldon.latitude = 53.814942900313696;
        eldon.longitude = -1.5615661746868454;
        eldon.include = true;
        
        Pub *luu = [[Pub alloc] init];
        luu.name = @"The Hyde Park Pub";
        luu.street = @"2 Headingly Lane";
        luu.town = @"Leeds";
        luu.city = @"Leeds";
        luu.postcode = @"LS6 2AS";
        luu.phone = @"01132745597";
        luu.rating = @"3.5";
        luu.picture = @"Hyde Park Picture.jpg";
        luu.logo = @"Hyde Park logo.jpg";
        luu.latitude = 53.814942900313696;
        luu.longitude = -1.5615661746868454;
        luu.include = true;
        
        Pub *fenton = [[Pub alloc] init];
        fenton.name = @"The Hyde Park Pub";
        fenton.street = @"2 Headingly Lane";
        fenton.town = @"Leeds";
        fenton.city = @"Leeds";
        fenton.postcode = @"LS6 2AS";
        fenton.phone = @"01132745597";
        fenton.rating = @"3.5";
        fenton.picture = @"Hyde Park Picture.jpg";
        fenton.logo = @"Hyde Park logo.jpg";
        fenton.latitude = 53.814942900313696;
        fenton.longitude = -1.5615661746868454;
        fenton.include = true;
        
        Pub *strawbs = [[Pub alloc] init];
        strawbs.name = @"The Hyde Park Pub";
        strawbs.street = @"2 Headingly Lane";
        strawbs.town = @"Leeds";
        strawbs.city = @"Leeds";
        strawbs.postcode = @"LS6 2AS";
        strawbs.phone = @"01132745597";
        strawbs.rating = @"3.5";
        strawbs.picture = @"Hyde Park Picture.jpg";
        strawbs.logo = @"Hyde Park logo.jpg";
        strawbs.latitude = 53.814942900313696;
        strawbs.longitude = -1.5615661746868454;
        strawbs.include = true;
        
        Pub *dryDock = [[Pub alloc] init];
        dryDock.name = @"The Dry Dock";
        dryDock.street = @"2 Headingly Lane";
        dryDock.town = @"Leeds";
        dryDock.city = @"Leeds";
        dryDock.postcode = @"LS6 2AS";
        dryDock.phone = @"01132745597";
        dryDock.rating = @"3.5";
        dryDock.picture = @"Hyde Park Picture.jpg";
        dryDock.logo = @"Hyde Park logo.jpg";
        dryDock.latitude = 53.814942900313696;
        dryDock.longitude = -1.5615661746868454;
        dryDock.include = true;
        
        [self.pubArray addObject:woodies];          //index 0
        [self.pubArray addObject:horseshoes];       //index 1
        [self.pubArray addObject:new];//index2
        [self.pubArray addObject:taps];//index3
        [self.pubArray addObject:arc];//index4
        [self.pubArray addObject:box];//index5
        [self.pubArray addObject:skyrack];//index6
        [self.pubArray addObject:oak];//index7
        [self.pubArray addObject:hyde]; //index8
        [self.pubArray addObject:library]; //index9
        [self.pubArray addObject:packhorse];//index10
        [self.pubArray addObject:eldon];//index11
        [self.pubArray addObject:luu];//index12
        [self.pubArray addObject:fenton];//index13
        [self.pubArray addObject:strawbs];//index14
        [self.pubArray addObject:dryDock];//index15

    }
    return self;
}

@end
