//
//  ViewController.m
//  DropdownListDemo
//
//  Created by HoYo on 2018/4/17.
//  Copyright © 2018年 HoYo. All rights reserved.
//

#import "ViewController.h"
#import "EBDropdownListView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UILabel *msgLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 300, 20)];
    msgLabel.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:msgLabel];
    
    
    
    EBDropdownListItem *item1 = [[EBDropdownListItem alloc] initWithItem:@"1" itemName:@"item1"];
    EBDropdownListItem *item2 = [[EBDropdownListItem alloc] initWithItem:@"2" itemName:@"item2"];
    EBDropdownListItem *item3 = [[EBDropdownListItem alloc] initWithItem:@"3" itemName:@"item3"];
    EBDropdownListItem *item4 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];

    // 弹出框向上
    EBDropdownListView *dropdownListView = [[EBDropdownListView alloc] initWithDataSource:@[item1, item2, item3, item4]];
    dropdownListView.frame = CGRectMake(20, 100, 130, 30);
    //dropdownListView.dataSource = @[item1, item2, item3, item4];
    dropdownListView.selectedIndex = 2;
    [dropdownListView setViewBorder:0.5 borderColor:[UIColor grayColor] cornerRadius:2];
    [self.view addSubview:dropdownListView];
    
    [dropdownListView setDropdownListViewSelectedBlock:^(EBDropdownListView *dropdownListView) {
        NSString *msgString = [NSString stringWithFormat:
                               @"selected name:%@  id:%@  index:%ld"
                               , dropdownListView.selectedItem.itemName
                               , dropdownListView.selectedItem.itemId
                               , dropdownListView.selectedIndex];
        
        msgLabel.text = msgString;
        
    }];
    
    // 弹出框向下
    EBDropdownListView *dropdownListView1 = [EBDropdownListView new];
    dropdownListView1.dataSource = @[item1, item2, item3, item4];
    dropdownListView1.frame = CGRectMake(20, CGRectGetHeight(self.view.frame) - 50, 130, 30);
    dropdownListView1.selectedIndex = 1;
    [dropdownListView1 setViewBorder:0.5 borderColor:[UIColor grayColor] cornerRadius:2];
    [self.view addSubview:dropdownListView1];
    
    
    [dropdownListView1 setDropdownListViewSelectedBlock:^(EBDropdownListView *dropdownListView) {
        NSString *msgString = [NSString stringWithFormat:
                               @"selected name:%@  id:%@  index:%ld"
                               , dropdownListView.selectedItem.itemName
                               , dropdownListView.selectedItem.itemId
                               , dropdownListView.selectedIndex];
        
        msgLabel.text = msgString;
    }];
    
    

   

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
