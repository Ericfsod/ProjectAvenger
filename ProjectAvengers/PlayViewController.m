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
@property (nonatomic) NSMutableArray *resultData;
@property (nonatomic) NSInteger currentQuestion;
- (void)nextQuestion;

@end

@implementation PlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.currentQuestion = 0;
    
    self.questions = [Avengers.heroQuestions allKeys];
    [self nextQuestion];
    
    
}

- (void)nextQuestion {
    
    self.selectedQuestion = self.questions[self.currentQuestion];
    
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

-(void)storeResult: (NSString *)resultSelected {
    [self.resultData addObject:resultSelected];
}

- (IBAction)selected:(id)sender {
    NSString *userSelected;
    if (self.buttonA == sender) {
        userSelected= self.optionA.text;
    } else if (self.buttonB == sender){
        userSelected= self.optionB.text;
    } else if (self.buttonC == sender){
        userSelected= self.optionC.text;
    } else if (self.buttonD == sender){
        userSelected= self.optionD.text;
    } else if (self.buttonE == sender){
        userSelected= self.optionE.text;
    } else if (self.buttonF == sender){
        userSelected= self.optionF.text;
    }
    [self storeResult:userSelected];
    
    self.currentQuestion++;
    
    [self nextQuestion];
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
