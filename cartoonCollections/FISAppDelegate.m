//
//  FISAppDelegate.m
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSMutableString *rollCall = [[NSMutableString alloc]init];
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        if (i != 6) {
            [rollCall appendFormat:@"%lu. %@ | ",(i+1),dwarfs[i]];
        } else {
            [rollCall appendFormat:@"%lu. %@",(i+1),dwarfs[i]];
        }
    }
    return rollCall;
}
- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *mPowers = [powers mutableCopy];
    for (NSUInteger i = 0; i < [mPowers count]; i++) {
        NSString *power = [mPowers[i] uppercaseString];
        mPowers[i] = [power stringByAppendingString:@"!"];
    }
    return mPowers;
}
- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSMutableString *powerAsShouts = [NSMutableString stringWithString:@"Let our powers combine:\n"];
    NSArray *formattedPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
    for(NSString *power in formattedPowers) {
        [powerAsShouts appendFormat:@"%@\n",power];
    }
    [powerAsShouts appendString:@"Go Planet!"];
    return powerAsShouts;
}


- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheeseInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    NSString *premiumCheese;
    for (int i = 0; i < [cheeseInStock count]; i++) {
        if (i < [premiumCheeseNames count]) {
            if ([cheeseInStock[i] isEqualToString:premiumCheeseNames[i]]) {
                return premiumCheese = cheeseInStock[i];
            }
        }
    }
    premiumCheese = @"No premium cheeses in stock.";
    return premiumCheese;
}
- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *mMoneyBags = [moneyBags mutableCopy];
    
    for (NSUInteger i = 0; i < [mMoneyBags count]; i++) {
        NSUInteger count = [[mMoneyBags[i] componentsSeparatedByString:@"$"] count]-1;
        mMoneyBags[i] = [NSString stringWithFormat:@"$%lu",count];
    }
    
    return mMoneyBags;
}


@end
