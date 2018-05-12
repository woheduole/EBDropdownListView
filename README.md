# EBDropdownListView


iOS封装的下拉列表控件，调用简单，在tableview上使用也不会遮挡，会自动选择向上或向下弹出选项，不会被屏幕遮挡

```
    EBDropdownListItem *item1 = [[EBDropdownListItem alloc] initWithItem:@"1" itemName:@"item1"];
    EBDropdownListItem *item2 = [[EBDropdownListItem alloc] initWithItem:@"2" itemName:@"item2"];
    EBDropdownListItem *item3 = [[EBDropdownListItem alloc] initWithItem:@"3" itemName:@"item3"];
    EBDropdownListItem *item4 = [[EBDropdownListItem alloc] initWithItem:@"4" itemName:@"item4"];

    // 弹出框向上
    EBDropdownListView *dropdownListView = [[EBDropdownListView alloc] initWithDataSource:@[item1, item2, item3, item4]];
    dropdownListView.frame = CGRectMake(20, 100, 130, 30);
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
```


![](https://upload-images.jianshu.io/upload_images/2107229-a8418a85fe3afa47.gif?imageMogr2/auto-orient/strip%7CimageView2/2/w/360)


[博客地址:https://www.jianshu.com/p/00186b02cb04](https://www.jianshu.com/p/00186b02cb04)
