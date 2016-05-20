//
//  ViewController.m
//  Boilerplate
//
//  Created by agatsa on 4/1/16.
//  Copyright © 2016 Agatsa. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () {
    
    UILabel *label;
    
}

@end

@implementation ViewController

-(instancetype) init {
    
    self = [super init];
    if(self) {
       
        [self setTitle:@"First"];
        [self.view setBackgroundColor:[UIColor whiteColor]];
        
        [self createSubviews];
        
        
    }
    return self;
}

-(void) createSubviews {
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *normalVCButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width - 40,64)];
    [[normalVCButton titleLabel] setLineBreakMode:NSLineBreakByWordWrapping];
    [[normalVCButton titleLabel] setTextAlignment:NSTextAlignmentCenter];
    [normalVCButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [[normalVCButton layer] setBorderWidth:5.0f];
    [[normalVCButton layer] setBorderColor:[[UIColor lightGrayColor]CGColor]];
    [normalVCButton setTitle:@"Normal Example" forState:UIControlStateNormal];
    [normalVCButton addTarget:self action:@selector(loadScreen:) forControlEvents:UIControlEventTouchUpInside];
    [normalVCButton setCenter:CGPointMake(self.view.center.x, self.view.center.y - ((normalVCButton.frame.size.height/2) + 5))];
    [self.view addSubview:normalVCButton];
    
    label = [[UILabel alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width - 40,64)];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setCenter:CGPointMake(self.view.center.x, self.view.center.y + ((normalVCButton.frame.size.height/2) + 5))];
    [self.view addSubview:label];
}
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) loadScreen:(UIButton *)buttonPressed {
    
    SecondViewController *vcToLoad = [[SecondViewController alloc]init];
    [vcToLoad setDelegate:self];
    [self.navigationController pushViewController:vcToLoad animated:TRUE];
    
}

-(void) didTapButtonWithName:(NSString *)name {
    
    NSLog(@"%@",name);
    [label setText:name];
}

@end
