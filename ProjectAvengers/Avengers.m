//
//  Avengers.m
//  ProjectAvengers
//
//  Created by Jason Wang on 8/4/15.
//  Copyright (c) 2015 Jason Wang. All rights reserved.
//

#import "Avengers.h"

@implementation Avengers



+ (NSDictionary *)heroQuestions {
    return @ {
        @"What matters to you the most in the following?" : @[
                                                                 @"Creativity",
                                                                 @"Loyalty",
                                                                 @"Normalcy",
                                                                 @"Family",
                                                                 @"Love",
                                                                 @"Social Status"
                                                                 
                                                                 ],
        @"If you’re in a war, what would be your reason to fight." : @[
                                                                          @"Fame",
                                                                          @"Honor",
                                                                          @"Peace",
                                                                          @"Money",
                                                                          @"Redemption",
                                                                          @"Approval"
                                                                          
                                                                          ],
        @"Which of the following food would you prefer?" : @[
                                             @"Escargo",
                                             @"Apple Pie",
                                             @"Burrito",
                                             @"Oatmeal",
                                             @"Pirogi",
                                             @"Smoked Turkey Leg"
                                             ],
        @"Which of the following person would you like to hangout with?" : @[
                                                                                       @"Elon Musk",
                                                                                       @"Buzz Lightyear",
                                                                                       @"No One",
                                                                                       @"Spouse",
                                                                                       @"James Bond",
                                                                                       @"Gandalf"
                                                                                       ],
        @"Favorite color" : @[
                                 @"White",
                                 @"Blue",
                                 @"Gray",
                                 @"Pink",
                                 @"Red",
                                 @"Gold"
                                 ],
        @"Preferred way of transportation?" : @[
                                                   @"Private Jet",
                                                   @"Bike",
                                                   @"Walk/On Foot",
                                                   @"Stay Home",
                                                   @"Submarine",
                                                   @"JetPack"
                                                   ],
        @"Prefered Communication Device?" : @[
                                                 @"Nexus 6",
                                                 @"Iphone 6 Plus",
                                                 @"Nokia 3310",
                                                 @"Landline",
                                                 @"BlackBerry 10",
                                                 @"Lumia 640XL"
                                                 ]
        
    };
    
}

@end
