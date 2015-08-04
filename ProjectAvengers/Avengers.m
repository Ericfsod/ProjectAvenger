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
        @"1) What matters to you the most in the following?" : @[
                                                                 @"Creativity",
                                                                 @"Loyalty",
                                                                 @"Normalcy",
                                                                 @"Family",
                                                                 @"Love",
                                                                 @"Social Status"
                                                                 
                                                                 ],
        @"2) If you’re in a war, what would be your reason to fight." : @[
                                                                          @"Fame",
                                                                          @"Honor",
                                                                          @"Peace",
                                                                          @"Money",
                                                                          @"Redemption",
                                                                          @"Approval"
                                                                          
                                                                          ],
        @"3) Which of the following food would you prefer?" : @[
                                             @"Escargo",
                                             @"Apple Pie",
                                             @"Burrito",
                                             @"Oatmeal",
                                             @"Pirogi",
                                             @"Smoked Turkey Leg"
                                             ],
        @"4) Which of the following person would you like to hangout with?" : @[
                                                                                       @"Elon Musk",
                                                                                       @"Buzz Lightyear of Space Command",
                                                                                       @"No One",
                                                                                       @"Spouse",
                                                                                       @"James Bond",
                                                                                       @"Gandalf"
                                                                                       ],
        @"5) Favorite color" : @[
                                 @"White",
                                 @"Blue",
                                 @"Gray",
                                 @"Pink",
                                 @"Red",
                                 @"Gold"
                                 ],
        @"6) Preferred way of transportation?" : @[
                                                   @"Private Jet",
                                                   @"Bike",
                                                   @"Walk/On Foot",
                                                   @"Stay Home",
                                                   @"Submarine",
                                                   @"JetPack"
                                                   ],
        @"7) Prefered Communication Device?" : @[
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
