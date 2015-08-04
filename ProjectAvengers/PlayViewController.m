//
//  PlayViewController.m
//  ProjectAvengers
//
//  Created by Jason Wang on 8/4/15.
//  Copyright (c) 2015 Jason Wang. All rights reserved.
//

#import "PlayViewController.h"
#import "Avengers.h"

@interface PlayViewController ()

@property (nonatomic) NSArray *questions;
@property (nonatomic) NSArray *options;

@end

@implementation PlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.questions = [[NSArray alloc] init];
    self.options = [[NSArray alloc] init];
    
    NSArray *allQuestions = [Avengers.heroQuestions allKeys];
    NSString *selectedQuestion = allQuestions[section];
    NSArray *allOptions = Avengers.heroQuestions[selectedQuestion];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
