//
//  ViewController.m
//  TF-Demo
//
//  Created by mac on 2020/12/11.
//

#import "ViewController.h"
#import "TFSecondViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Main";
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor colorWithRed:213/255.0 green:213/255.0 blue:213/255.0 alpha:0.7];
    button.frame = CGRectMake(0, 0, 120, 60);
    button.center = self.view.center;
    button.layer.cornerRadius = 10.f;
    button.layer.masksToBounds = YES;
    [button setTitle:@"click here" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)clickBtn:(id)sender
{
    TFSecondViewController * vc = [[TFSecondViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
