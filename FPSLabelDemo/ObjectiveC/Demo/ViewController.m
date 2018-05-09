//
//  ViewController.m
//  Demo
//
//  Created by QianKun on 5/5/18.
//  Copyright © 2018 QianKun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *data;
@end

@implementation ViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self updateData];
    [self setupTableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - private functions
- (void)updateData
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 100; i++)
    {
        [array addObject:[NSString stringWithFormat:@"row = %03d", i + 1]];
    }
    self.data = array;
}

- (void)setupTableView
{
    self.tableView.dataSource = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    
    // purposely use a lot cpu in main thread to demo the dropping of FPS.
    for (NSString *str in self.data) { NSLog(@"%@", str); }
    
    return cell;
}

@end
