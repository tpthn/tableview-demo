//
//  ViewController.m
//  DemoTableView
//
//  Created by PC on 10/2/15.
//  Copyright © 2015 Flint. All rights reserved.
//

#import "ViewController.h"

static const NSInteger rowCount = 3;

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
}

#pragma  mark - Table View Delegate / Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return rowCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"colorCell" forIndexPath:indexPath];
  cell.textLabel.text = [self titleForRowAtIndex:indexPath.row];
  cell.backgroundColor = [self colorForRowAtIndex:indexPath.row];
  
  return cell;
}

#pragma mark - Private

// So that we can extract data source later if neccessary

- (UIColor *)colorForRowAtIndex:(NSInteger)index
{
  switch (index) {
    case 0:
      return [UIColor redColor];
    
    case 1:
      return [UIColor greenColor];
   
    case 2:
      return [UIColor blueColor];
      
    default:
      return [UIColor clearColor];
  }
}

- (NSString *)titleForRowAtIndex:(NSInteger)index
{
  switch (index) {
    case 0:
      return @"Red";
      
    case 1:
      return @"Green";
      
    case 2:
      return @"Blue";
      
    default:
      return @"";
  }
}

@end
