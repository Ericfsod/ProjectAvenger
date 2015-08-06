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
@property (nonatomic) NSString *selectedQuestion;
- (void)nextQuestion;

@end

@implementation PlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.questions = [Avengers.heroQuestions allKeys];
    [nextQuestion];

    
    
}

- (void)nextQuestion {
    
    self.selectedQuestion = self.questions[0];
    
    self.options = Avengers.heroQuestions[self.selectedQuestion];
    
//    NSDictionary *questionsDictionary = [Avengers heroQuestions];
//    NSString *question = self.selectedQuestion;
//    NSArray *options = [questionsDictionary objectForKey:question];
    
    
    self.question.text = self.selectedQuestion;
    self.optionA.text = self.options[0];
    self.optionB.text = self.options[1];
    self.optionC.text = self.options[2];
    self.optionD.text = self.options[3];
    self.optionE.text = self.options[4];
    self.optionF.text = self.options[5];
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
