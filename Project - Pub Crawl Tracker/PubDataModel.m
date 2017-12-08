//
//  DataModel.m
//  Project - Pub Crawl Tracker
//
//  Created by Josh on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "PubDataModel.h"

/*
 all coordinates found from:https://www.gps-coordinates.net
 details of pubs found on google search
 references for image follow where they are used
 */

@implementation PubDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSUserDefaults *switchState = [NSUserDefaults standardUserDefaults];
        self.pubArray = [NSMutableArray array];
        // initialise the array and add the data
        
        Pub *woodies = [[Pub alloc] init];
        woodies.name = @"Woodies Craft Ale House";
        woodies.street = @"104 Otley Road";
        woodies.town = @"Far Headingley";
        woodies.city = @"Leeds";
        woodies.postcode = @"LS16 5JG";
        woodies.phone = @"01132784393";
        woodies.rating = @"4.2";
        woodies.picture = @"Woodies picture.jpg";// https://pbs.twimg.com/profile_images/1216252119/412560291_o.jpg
        woodies.logo = @"Woodies Logo.jpg";// https://www.facebook.com/WoodiesHeadingley/photos/a.649567105093064.1073741829.335404016509376/1127957407254029/?type=3&theater
        woodies.latitude = 53.8280037;
        woodies.longitude = -1.5831049999999323;
        woodies.include = [switchState boolForKey:@"SwitchState 0"];
        
        Pub *horseshoes = [[Pub alloc] init];
        horseshoes.name = @"The Three Horseshoes";
        horseshoes.street = @"98 Otley Road";
        horseshoes.town = @"Leeds";
        horseshoes.city = @"Leeds";
        horseshoes.postcode = @"LS16 5JG";
        horseshoes.phone = @"01132757222";
        horseshoes.rating = @"3.9";
        horseshoes.picture = @"Horseshoes Picture.jpg"; // http://images.cdn.inapub.co.uk/photos/4d9b84f350fc4ca2b1720bd796ebcfdc.jpg?width=760&height=400&mode=crop
        horseshoes.logo = @"horseshoes logo.jpg"; //https://res.cloudinary.com/jpress/image/fetch/w_700,f_auto,ar_3:2,c_fill/https://www.yorkshireeveningpost.co.uk/webimage/1.7214162.1429200328!/image/2335036744.jpg resized at http://resizeimage.net
        horseshoes.latitude = 53.82776609999999;
        horseshoes.longitude = -1.5827315000000226;
        horseshoes.include = [switchState boolForKey:@"SwitchState 1"];

        Pub *new = [[Pub alloc] init];
        new.name = @"The New Inn";
        new.street = @"68 Otley Road";
        new.town = @"Far Headingley";
        new.city = @"Leeds";
        new.postcode = @"LS6 4BA";
        new.phone = @"01132745597";
        new.rating = @"4.1";
        new.picture = @"New Inn Picture.jpg"; // https://whatpub.com/img/LEE/113/new-inn-leeds/200/150
        new.logo = @"new inn logo.jpg"; // same as above resized at https://resizeimage.net
        new.latitude = 53.82655874802627;
        new.longitude = -1.5817415714263916;
        new.include = [switchState boolForKey:@"SwitchState 2"];

        Pub *taps = [[Pub alloc] init];
        taps.name = @"The Headingley Taps";
        taps.street = @"Bennett Road Car Park";
        taps.town = @"Headingley";
        taps.city = @"Leeds";
        taps.postcode = @"LS6 3HN";
        taps.phone = @"01132307168";
        taps.rating = @"3.7";
        taps.picture = @"taps picture.jpg"; // https://leeds-list.com/wp-content/uploads/2015/09/headingley-taps-september-2015-cc-800x450.jpeg
        taps.logo = @"taps logo.jpg"; // https://www.mbdiningout.co.uk/specific/images/heroes/premises/oak/vc/headingleytaps.jpg
        taps.latitude = 53.8205424434412;
        taps.longitude = -1.5799391269683838;
        taps.include = [switchState boolForKey:@"SwitchState 3"];

        Pub *arc = [[Pub alloc] init];
        arc.name = @"The Arc";
        arc.street = @"19 Ash Road";
        arc.town = @"Headingly";
        arc.city = @"Leeds";
        arc.postcode = @"LS6 3JJ";
        arc.phone = @"01132752223";
        arc.rating = @"4.0";
        arc.picture = @"arc picture.jpg"; // https://res.cloudinary.com/jpress/image/fetch/w_700,f_auto,ar_3:2,c_fill/https://www.yorkshireeveningpost.co.uk/webimage/1.5105336.1352372735!/image/342760154.jpg
        arc.logo = @"arc logo.jpg";
        arc.latitude = 53.82078311221173;
        arc.longitude = -1.5808403491973877;
        arc.include = [switchState boolForKey:@"SwitchState 4"];
        
        Pub *box = [[Pub alloc] init];
        box.name = @"The Box";
        box.street = @"8 Otley Road";
        box.town = @"Headingley";
        box.city = @"Leeds";
        box.postcode = @"LS6 2AD";
        box.phone = @"01132249266";
        box.rating = @"3.8";
        box.picture = @"box picture.jpg"; // http://www.parklaneproperties.com/assets/pages/area_guides/headingley-2.jpg
        box.logo = @"box logo.jpg"; // https://arcinspirations.com/assets/box/img/box.jpg
        box.latitude = 53.82058044386528;
        box.longitude = -1.5767741203308105;
        box.include = [switchState boolForKey:@"SwitchState 5"];

        Pub *skyrack = [[Pub alloc] init];
        skyrack.name = @"The Skyrack";
        skyrack.street = @"2 St Micheal's Road";
        skyrack.town = @"Leeds";
        skyrack.city = @"Leeds";
        skyrack.postcode = @"LS6 3AW";
        skyrack.phone = @"01132785836";
        skyrack.rating = @"4.0";
        skyrack.picture = @"skyrack picture.jpg"; // http://schoolcroft.com/Elmet8.JPG
        skyrack.logo = @"skyrack logo.jpg"; // https://media-cdn.tripadvisor.com/media/photo-s/02/4c/22/de/the-skyrack.jpg
        skyrack.latitude = 53.81971909245694;
        skyrack.longitude = -1.576462984085083;
        skyrack.include = [switchState boolForKey:@"SwitchState 6"];

        Pub *oak = [[Pub alloc] init];
        oak.name = @"The Original Oak";
        oak.street = @"2 Otley Road";
        oak.town = @"Leeds";
        oak.city = @"Leeds";
         oak.postcode = @"LS6 2DG";
        oak.phone = @"01132751322";
        oak.rating = @"3.8";
        oak.picture = @"original oak picture.jpg"; // http://www.lg-properties-leeds.co.uk/wp-content/uploads/2015/11/original-oak-headingley.jpg
        oak.logo = @"original oak logo.jpg"; //as above resized at http://resizeimage.net
        oak.latitude = 53.819579754535965;
        oak.longitude = -1.5758353471755981;
        oak.include = [switchState boolForKey:@"SwitchState 7"];
        
        Pub *hyde = [[Pub alloc] init];
        hyde.name = @"The Hyde Park Pub";
        hyde.street = @"2 Headingley Lane";
        hyde.town = @"Leeds";
        hyde.city = @"Leeds";
        hyde.postcode = @"LS6 2AS";
        hyde.phone = @"01132745597";
        hyde.rating = @"3.5";
        hyde.picture = @"Hyde Park Picture.jpg";
        hyde.logo = @"Hyde Park logo.jpg"; // https://pbs.twimg.com/profile_images/906945719352864769/H6hN_KO4.jpg
        hyde.latitude = 53.814942900313696;
        hyde.longitude = -1.5615661746868454;
        hyde.include = [switchState boolForKey:@"SwitchState 8"];
        
        Pub *library = [[Pub alloc] init];
        library.name = @"The Library";
        library.street = @"229 Woodhouse Lane";
        library.town = @"Leeds";
        library.city = @"Leeds";
        library.postcode = @"LS2 3AP";
        library.phone = @"01132440794";
        library.rating = @"4.1";
        library.picture = @"Library Picture.jpg"; // https://s-media-cache-ak0.pinimg.com/236x/93/df/bc/93dfbc342f4d2baded5db52e4516995a.jpg
        library.logo = @"Library logo.jpg";  // https://pbs.twimg.com/profile_images/651681423674482688/AHJXSE6I_400x400.jpg
        library.latitude = 53.810657558956166;
        library.longitude = -1.5569058365234696;
        library.include = [switchState boolForKey:@"SwitchState 9"];
        
        Pub *packhorse = [[Pub alloc] init];
        packhorse.name = @"The Pack Horse";
        packhorse.street = @"208 Woodhouse Lane";
        packhorse.town = @"Leeds";
        packhorse.city = @"Leeds";
        packhorse.postcode = @"LS2 9DX";
        packhorse.phone = @"01132453980";
        packhorse.rating = @"3.9";
        packhorse.picture = @"pack horse picture.jpg"; // https://res.cloudinary.com/jpress/image/fetch/w_700,f_auto,ar_3:2,c_fill/https://www.yorkshireeveningpost.co.uk/webimage/1.7065133.1421927360!/image/1425656172.jpg
        packhorse.logo = @"pack horse logo.png"; // http://www.burleystreetbrewhouse.co.uk/wp-content/uploads/2011/04/Horsebadge-300x210.png
        packhorse.latitude = 53.81040459960392;
        packhorse.longitude = -1.5557724237442017;
        packhorse.include = [switchState boolForKey:@"SwitchState 10"];
        
        Pub *eldon = [[Pub alloc] init];
        eldon.name = @"The Eldon";
        eldon.street = @"190 Woodhouse Lane";
        eldon.town = @"Leeds";
        eldon.city = @"Leeds";
        eldon.postcode = @"LS2 9DX";
        eldon.phone = @"01132453591";
        eldon.rating = @"3.8";
        eldon.picture = @"eldon picture.jpg"; // https://blancamarin92.files.wordpress.com/2013/03/img_1113.jpg
        eldon.logo = @"eldon logo.jpg"; //editted from above using http://resizeimage.net
        eldon.latitude = 53.810138531318174;
        eldon.longitude = -1.5552574396133423;
        eldon.include = [switchState boolForKey:@"SwitchState 11"];
        
        Pub *luu = [[Pub alloc] init];
        luu.name = @"Terrace or Old Bar";
        luu.street = @"Leeds University Union";
        luu.town = @"Leeds";
        luu.city = @"Leeds";
        luu.postcode = @"LS2 9JZ";
        luu.phone = @"01133801315";
        luu.rating = @"3.9";
        luu.picture = @"luu picture.jpg"; // https://leeds-list.com/wp-content/uploads/2015/09/leeds-uni-union-september-2015.jpg
        luu.logo = @"luu logo.png"; // https://www.luu.org.uk/static/img/luu_logo.svg
        luu.latitude = 53.80676026749211;
        luu.longitude = -1.5565167367458344;
        luu.include = [switchState boolForKey:@"SwitchState 12"];
        
        Pub *fenton = [[Pub alloc] init];
        fenton.name = @"The Fenton";
        fenton.street = @"161-165 Woodhouse Lane";
        fenton.town = @"Leeds";
        fenton.city = @"Leeds";
        fenton.postcode = @"LS2 3AD";
        fenton.phone = @"01132431382";
        fenton.rating = @"4.2";
        fenton.picture = @"fenton picture.jpg"; // https://c2.staticflickr.com/4/3487/3716505842_f1cf82c520_z.jpg?zz=1
        fenton.logo = @"fenton logo.jpg"; // https://s3-media4.fl.yelpcdn.com/bphoto/i7ZGAKTCWXaHcMTwiQHD1w/348s.jpg edditted at http://resizeimage.net
        fenton.latitude = 53.80572598602085;
        fenton.longitude = -1.5495416522026062;
        fenton.include = [switchState boolForKey:@"SwitchState 13"];
        
        Pub *strawbs = [[Pub alloc] init];
        strawbs.name = @"Strawberryfields Cafe Bar";
        strawbs.street = @"159 Woodhouse Lane";
        strawbs.town = @"Leeds";
        strawbs.city = @"Leeds";
        strawbs.postcode = @"LS2 3ED";
        strawbs.phone = @"01132431515";
        strawbs.rating = @"4.2";
        strawbs.picture = @"strawbs picture.jpg"; // https://media.thedailytouch.com/2015/07/otley_run14-strawberry_fields.jpg
        strawbs.logo = @"strawbs logo.png"; // https://cdn1.iconfinder.com/data/icons/food-drink-5/32/strawberry-512.png
        strawbs.latitude = 53.80566817321014;
        strawbs.longitude = -1.549561768770218;
        strawbs.include = [switchState boolForKey:@"SwitchState 14"];
        
        Pub *dryDock = [[Pub alloc] init];
        dryDock.name = @"The Dry Dock";
        dryDock.street = @"Woodhouse Lane";
        dryDock.town = @"Leeds";
        dryDock.city = @"Leeds";
        dryDock.postcode = @"LS2 3AX";
        dryDock.phone = @"01133912658";
        dryDock.rating = @"4.1";
        dryDock.picture = @"dry dock.jpg"; // https://www.on-magazine.co.uk/wp-content/uploads/dry-dock-exterior-restaurant-review.jpg
        dryDock.logo = @"dry dock logo.jpg"; // https://pbs.twimg.com/profile_images/740548525189177347/IHn8EV2i_400x400.jpg
        dryDock.latitude = 53.80453486763053;
        dryDock.longitude = -1.5476560592651367;
        dryDock.include = [switchState boolForKey:@"SwitchState 15"];
        
        //the array will be in the order added
        
        [self.pubArray addObject:woodies];          //index 0
        [self.pubArray addObject:horseshoes];       //index 1
        [self.pubArray addObject:new];              //index 2
        [self.pubArray addObject:taps];             //index 3
        [self.pubArray addObject:arc];              //index 4
        [self.pubArray addObject:box];              //index 5
        [self.pubArray addObject:skyrack];          //index 6
        [self.pubArray addObject:oak];              //index 7
        [self.pubArray addObject:hyde];             //index 8
        [self.pubArray addObject:library];          //index 9
        [self.pubArray addObject:packhorse];        //index 10
        [self.pubArray addObject:eldon];            //index 11
        [self.pubArray addObject:luu];              //index 12
        [self.pubArray addObject:fenton];           //index 13
        [self.pubArray addObject:strawbs];          //index 14
        [self.pubArray addObject:dryDock];          //index 15

    }
    return self;
}

@end
