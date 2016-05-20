//
//  SecondViewController.m
//  Boilerplate
//
//  Created by agatsa on 5/20/16.
//  Copyright © 2016 Agatsa. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

-(instancetype) init {
    
    self = [super init];
    if(self) {
        
        [self setTitle:@"Second"];
        [self.view setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}

- (void)viewDidLoad {
   
    [super viewDidLoad];
    
    UIButton *normalVCButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width - 40,64)];
    [[normalVCButton titleLabel] setLineBreakMode:NSLineBreakByWordWrapping];
    [[normalVCButton titleLabel] setTextAlignment:NSTextAlignmentCenter];
    [normalVCButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [[normalVCButton layer] setBorderWidth:5.0f];
    [[normalVCButton layer] setBorderColor:[[UIColor lightGrayColor]CGColor]];
    [normalVCButton setTitle:@"Pranav" forState:UIControlStateNormal];
    [normalVCButton setTag:0];
    [normalVCButton addTarget:self action:@selector(loadScreen:) forControlEvents:UIControlEventTouchUpInside];
    [normalVCButton setCenter:CGPointMake(self.view.center.x, self.view.center.y - ((normalVCButton.frame.size.height/2) + 5))];
    [self.view addSubview:normalVCButton];
    
    
    UIButton *tableVCButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width - 40,64)];
    [[tableVCButton titleLabel] setLineBreakMode:NSLineBreakByWordWrapping];
    [[tableVCButton titleLabel] setTextAlignment:NSTextAlignmentCenter];
    [tableVCButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [[tableVCButton layer] setBorderWidth:5.0f];
    [[tableVCButton layer] setBorderColor:[[UIColor lightGrayColor]CGColor]];
    [tableVCButton setTitle:@"Kirti" forState:UIControlStateNormal];
    [tableVCButton setTag:1];
    [tableVCButton addTarget:self action:@selector(loadScreen:) forControlEvents:UIControlEventTouchUpInside];
    [tableVCButton setCenter:CGPointMake(self.view.center.x, self.view.center.y + ((tableVCButton.frame.size.height/2) + 5))];
    [self.view addSubview:tableVCButton];
}

-(void) loadScreen:(UIButton *)buttonPressed {
    
    [[self delegate] didTapButtonWithName:[[buttonPressed titleLabel]text]];
    [self.navigationController popViewControllerAnimated:TRUE];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
