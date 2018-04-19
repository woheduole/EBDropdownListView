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
```


![](https://thumbnail0.baidupcs.com/thumbnail/bc4cf383471489b094a71e7af1478d2e?fid=524296408-250528-740366640413438&time=1524142800&rt=sh&sign=FDTAER-DCb740ccc5511e5e8fedcff06b081203-o2EMR3EJoyP8UnxB0exxJVWIA0M%3D&expires=8h&chkv=0&chkbd=0&chkpc=&dp-logid=2525964582990862598&dp-callid=0&size=c710_u400&quality=100&vuk=-&ft=video)
