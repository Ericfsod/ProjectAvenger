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
@property (nonatomic) NSInteger optA;
@property (nonatomic) NSInteger optB;
@property (nonatomic) NSInteger optC;
@property (nonatomic) NSInteger optD;
@property (nonatomic) NSInteger optE;
@property (nonatomic) NSInteger optF;
@property (nonatomic) NSArray *resultCount;
@property (weak, nonatomic) IBOutlet UIView *resultView;
- (void)nextQuestion;

@end

@implementation PlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.resultView setHidden:YES];
    
    self.currentQuestion = 0;
    self.optA = 1;
    self.optB = 1;
    self.optC = 1;
    self.optD = 1;
    self.optE = 1;
    self.optF = 1;
    
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
        self.optA++;
    } else if (self.buttonB == sender){
        userSelected= self.optionB.text;
        self.optB++;
    } else if (self.buttonC == sender){
        userSelected= self.optionC.text;
        self.optC++;
    } else if (self.buttonD == sender){
        userSelected= self.optionD.text;
        self.optD++;
    } else if (self.buttonE == sender){
        userSelected= self.optionE.text;
        self.optE++;
    } else if (self.buttonF == sender){
        userSelected= self.optionF.text;
        self.optF++;
    }
    [self storeResult:userSelected];
    
    self.currentQuestion++;
    
    if (self.currentQuestion == 7) {
        
        [self resultPage];
    } else {
        [self nextQuestion];
    }
}

- (void) selectedHero {
    
    
}

- (void)resultPage {
    [self.resultView setHidden:NO];
    
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
