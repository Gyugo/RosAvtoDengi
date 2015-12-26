//
//  ViewController.m
//  RosAvtoDengi
//
//  Created by Viktor on 26.12.15.
//  Copyright © 2015 Viktor. All rights reserved.
//

#import "ViewController.h"
#import "ServicesViewController.h"
#import "OnlineViewController.h"
#import "FilialsViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton * buttonServices;
@property (weak, nonatomic) IBOutlet UIButton *buttonOnline;
@property (weak, nonatomic) IBOutlet UIButton *buttonFilials;
@property (weak, nonatomic) IBOutlet UIButton *callButton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.buttonServices addTarget:self action:@selector(testButtonAcion)
                  forControlEvents:UIControlEventTouchUpInside];
    [self.buttonOnline addTarget:self action:@selector(buttonOnlineAction)
                forControlEvents:UIControlEventTouchUpInside];
    [self.buttonFilials addTarget:self action:@selector(buttonFilialsAction)
                 forControlEvents:UIControlEventTouchUpInside];
    [self.callButton addTarget:self action:@selector(callButtonAction)
                 forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)testButtonAcion
{
    ServicesViewController * detail = [self.storyboard
    instantiateViewControllerWithIdentifier:@"servicesViewController"];
    [self.navigationController pushViewController:detail animated:YES];
}

- (void)buttonOnlineAction
{
    OnlineViewController * detail = [self.storyboard
    instantiateViewControllerWithIdentifier:@"onlineViewController"];
    [self.navigationController pushViewController:detail animated:YES];
}


- (void)buttonFilialsAction
{
    FilialsViewController * detail = [self.storyboard
    instantiateViewControllerWithIdentifier:@"filialsViewController"];
    [self.navigationController pushViewController:detail animated:YES];
}

- (void) callButtonAction
{
    NSLog(@"Дзынь Дзынь основное меню");
}

@end
