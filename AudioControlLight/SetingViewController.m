//
//  SetingViewController.m
//  AudioControlLight
//
//  Created by yin yi on 2013/01/31.
//  Copyright (c) 2013年 yin yi. All rights reserved.
//

#import "SetingViewController.h"

static int audioMode = 2;

@interface SetingViewController ()

@end

@implementation SetingViewController

@synthesize myRadioBt1,myRadioBt2,myRadioBt3,myBackBt,myBg,myList,myTitle;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (iPhone5) {
        [myBg setFrame:CGRectMake(0, 0, 320, 568)];
        [myTitle setFrame:CGRectMake(8, 0, 304, 46.5)];
        [myList setFrame:CGRectMake(16, 60, 288, 185)];
    }
    switch (audioMode) {
        case 1:
            [myRadioBt1 setImage:[UIImage imageNamed:@"radioDown.png"] forState:UIControlStateNormal];
            [myRadioBt2 setImage:[UIImage imageNamed:@"radioUp.png"] forState:UIControlStateNormal];
            [myRadioBt3 setImage:[UIImage imageNamed:@"radioUp.png"] forState:UIControlStateNormal];
            myRadioBt1.tag = 1;
            myRadioBt2.tag = 0;
            myRadioBt3.tag = 0;
            break;
        case 2:
            [myRadioBt2 setImage:[UIImage imageNamed:@"radioDown.png"] forState:UIControlStateNormal];
            [myRadioBt1 setImage:[UIImage imageNamed:@"radioUp.png"] forState:UIControlStateNormal];
            [myRadioBt3 setImage:[UIImage imageNamed:@"radioUp.png"] forState:UIControlStateNormal];
            myRadioBt1.tag = 0;
            myRadioBt2.tag = 1;
            myRadioBt3.tag = 0;
            break;
        case 3:
            [myRadioBt3 setImage:[UIImage imageNamed:@"radioDown.png"] forState:UIControlStateNormal];
            [myRadioBt1 setImage:[UIImage imageNamed:@"radioUp.png"] forState:UIControlStateNormal];
            [myRadioBt2 setImage:[UIImage imageNamed:@"radioUp.png"] forState:UIControlStateNormal];
            myRadioBt1.tag = 0;
            myRadioBt2.tag = 0;
            myRadioBt3.tag = 1;
            break;
            
        default:
            break;
    }
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btPressed:(id)sender{
    if ([sender isEqual:myRadioBt1]) {
        if (myRadioBt1.tag == 0) {
            [myRadioBt1 setImage:[UIImage imageNamed:@"radioDown.png"] forState:UIControlStateNormal];
            [myRadioBt2 setImage:[UIImage imageNamed:@"radioUp.png"] forState:UIControlStateNormal];
            [myRadioBt3 setImage:[UIImage imageNamed:@"radioUp.png"] forState:UIControlStateNormal];
            myRadioBt1.tag = 1;
            myRadioBt2.tag = 0;
            myRadioBt3.tag = 0;
            audioMode = 1;
        }
    }else if ([sender isEqual:myRadioBt2]){
        if (myRadioBt2.tag == 0) {
            [myRadioBt2 setImage:[UIImage imageNamed:@"radioDown.png"] forState:UIControlStateNormal];
            [myRadioBt1 setImage:[UIImage imageNamed:@"radioUp.png"] forState:UIControlStateNormal];
            [myRadioBt3 setImage:[UIImage imageNamed:@"radioUp.png"] forState:UIControlStateNormal];
            myRadioBt1.tag = 0;
            myRadioBt2.tag = 1;
            myRadioBt3.tag = 0;
            audioMode = 2;
        }
    }else if ([sender isEqual:myRadioBt3]){
        if (myRadioBt3.tag == 0) {
            [myRadioBt3 setImage:[UIImage imageNamed:@"radioDown.png"] forState:UIControlStateNormal];
            [myRadioBt1 setImage:[UIImage imageNamed:@"radioUp.png"] forState:UIControlStateNormal];
            [myRadioBt2 setImage:[UIImage imageNamed:@"radioUp.png"] forState:UIControlStateNormal];
            myRadioBt1.tag = 0;
            myRadioBt2.tag = 0;
            myRadioBt3.tag = 1;
            audioMode = 3;
        }
    }else if ([sender isEqual:myBackBt]){
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

+(int)getMode{
    return audioMode;
}

@end
