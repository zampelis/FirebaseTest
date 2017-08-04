//
//  ViewController.m
//  firebasetest
//
//  Created by Dimitrios Zampelis on 04/08/2017.
//  Copyright © 2017 Dimitrios Zampelis. All rights reserved.
//

#import "ViewController.h"
@import Firebase;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendFirebaseAnalyticsEvent:(UIButton *)sender {
    
    [FIRAnalytics logEventWithName:kFIREventSelectContent
                        parameters:@{
                                     kFIRParameterItemID:[NSString stringWithFormat:@"id-%@", self.title],
                                     kFIRParameterItemName:self.title,
                                     kFIRParameterContentType:@"image"
                                     }];
    
}

@end
