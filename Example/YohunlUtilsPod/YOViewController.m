//
//  YOViewController.m
//  YohunlUtilsPod
//
//  Created by yohunl on 08/25/2015.
//  Copyright (c) 2015 yohunl. All rights reserved.
//

#import "YOViewController.h"
#import <YohunlUtilsPod/YONetwork.h>
@interface YOViewController ()

@end

@implementation YOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self test];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) test {
    YONetwork *net = [YONetwork new];
    [net getGithubReposForUser:@"yohunl" withSuccess:^(id responseObject) {
        NSLog(@"getGithubReposForUser response = %@",responseObject);
    } failure:^(NSError *error) {
        NSLog(@"getGithubReposForUser error = %@",error);
    }];
}
@end
