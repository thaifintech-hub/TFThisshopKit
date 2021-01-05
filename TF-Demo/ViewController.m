//
//  ViewController.m
//  TF-Demo
//
//  Created by mac on 2020/12/11.
//

#import "ViewController.h"
#import <TFThisshopKit/TFThisshopManager.h>

@interface ViewController ()
{
    UITextField * _orderIdTF;
    UITextField * _itemIdTF;
    UITextField * _countTF;

}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Main";
    
    UITextField * orderIdTF = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    orderIdTF.placeholder = @" orderId/流水号id";
    [self.view addSubview:orderIdTF];
    orderIdTF.center = CGPointMake(self.view.center.x, self.view.center.y-230);
    orderIdTF.layer.borderColor = [UIColor lightGrayColor].CGColor;
    orderIdTF.layer.borderWidth = 1.f;
    orderIdTF.layer.cornerRadius = 4.f;
    _orderIdTF = orderIdTF;
    
    
    UITextField * itemIdTF = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    itemIdTF.placeholder = @" itemId/商品id";
    [self.view addSubview:itemIdTF];
    itemIdTF.center = CGPointMake(self.view.center.x, self.view.center.y-170);
    itemIdTF.layer.borderColor = [UIColor lightGrayColor].CGColor;
    itemIdTF.layer.borderWidth = 1.f;
    itemIdTF.layer.cornerRadius = 4.f;
    _itemIdTF = itemIdTF;
    
    UITextField * countTF = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    countTF.placeholder = @" count/商品数";
    [self.view addSubview:countTF];
    countTF.center = CGPointMake(self.view.center.x, self.view.center.y-110);
    countTF.layer.borderColor = [UIColor lightGrayColor].CGColor;
    countTF.layer.borderWidth = 1.f;
    countTF.layer.cornerRadius = 4.f;
    _countTF = countTF;
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor colorWithRed:213/255.0 green:213/255.0 blue:213/255.0 alpha:0.7];
    button.frame = CGRectMake(0, 0, 160, 60);
    button.center = self.view.center;
    button.layer.cornerRadius = 10.f;
    button.layer.masksToBounds = YES;
    [button setTitle:@"click to recharge" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)clickBtn:(id)sender
{
    if (_orderIdTF.text.length==0) {
        NSLog(@"please input orderId");
        return;
    }
    if (_itemIdTF.text.length==0) {
        NSLog(@"please input itemId");
        return;
    }
    if (_countTF.text.length==0) {
        NSLog(@"please input count");
        return;
    }
    
    [[TFThisshopManager sharedInstance] startRechargeWithOrderId:_orderIdTF.text  andProductId:_itemIdTF.text andCount:_countTF.text andSuccessed:^(NSDictionary * _Nonnull data) {
        //
    } andFailed:^(NSError * _Nonnull error) {
        //
    }];
}

@end
