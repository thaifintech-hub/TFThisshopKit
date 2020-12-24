//
//  TFBaseViewController.m
//  TF-Demo
//
//  Created by Ricky on 2020/12/18.
//

#import "TFBaseViewController.h"

@interface TFBaseViewController ()

@end

@implementation TFBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initUI];
    
}

-(void)initUI
{
    self.view.backgroundColor = [UIColor whiteColor];
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
