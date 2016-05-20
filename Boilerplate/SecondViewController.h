//
//  SecondViewController.h
//  Boilerplate
//
//  Created by agatsa on 5/20/16.
//  Copyright © 2016 Agatsa. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondVCDelegate <NSObject>
@optional
-(void) didTapButtonWithName:(NSString *) name;
@end

@interface SecondViewController : UIViewController

@property (nonatomic) id <SecondVCDelegate> delegate;

@end
