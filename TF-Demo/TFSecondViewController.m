//
//  TFSecondViewController.m
//  TF-Demo
//
//  Created by Ricky on 2020/12/18.
//

#import "TFSecondViewController.h"
#import <TFThisshopKit/TFThisshopKit.h>

@interface TFSecondViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) NSMutableArray * dataArray;

@end

@implementation TFSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Recharge";
    
    [self initData];
    [self initTableView];
    
    
}

-(void)initData
{
    self.dataArray = [[NSMutableArray alloc] init];
    [self.dataArray addObjectsFromArray:@[@"10",@"20",@"30",@"40",@"50",@"60",@"70",@"80",@"90",@"95"]];
}

-(void)initTableView
{
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
}


#pragma mark - tableView delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 68;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * myCell = @"myCell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:myCell];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:myCell];
    }
    
    NSString * str = [self.dataArray objectAtIndex:indexPath.row];
    cell.textLabel.text = str;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSString * str = [self.dataArray objectAtIndex:indexPath.row];
    
    [[TFThisshopManager sharedInstance] startRechargeWithOrderId:@"tf000004" andProductId:@"5452400" andCount:str andSuccessed:^(NSDictionary * _Nonnull dict) {
        
    } andFailed:^(NSError * _Nonnull error) {
        
    }];
   
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
