//
//  ViewController.m
//  NetWorking
//
//  Created by lwj on 2018/4/25.
//  Copyright © 2018年 lwj. All rights reserved.
//

#import "ViewController.h"
#import "HttpManagerRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *redBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    redBtn.backgroundColor = [UIColor redColor];
    [redBtn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:redBtn];
    
}

- (void)btnAction{
    
    [HttpManagerRequest getUserInfoWithSuccessBlock:^(id result) {
       
        NSLog(@"%@",result);
        
    } WithFaileBlock:^(id result) {
        
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
