//
//  ViewController.m
//  TKBezierpathDraw
//
//  Created by 翟宇 on 16/2/17.
//  Copyright © 2016年 翟宇. All rights reserved.
//

#import "ViewController.h"
#import "TKBezierpathDrawView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TKBezierpathDrawView* tkbdv = [[TKBezierpathDrawView alloc]init];
    tkbdv.frame = CGRectMake(0, 64, 300, 300);
    tkbdv.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:tkbdv];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
