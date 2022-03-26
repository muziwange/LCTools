//
//  ViewController.m
//  LCTools
//
//  Created by 李成 on 2022/3/26.
//

#import "ViewController.h"
#import "PAEHasHeaderBaseVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    btn.frame = CGRectMake(50, 100, 100, 50);
}

- (void)click {
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[PAEHasHeaderBaseVC new]];
    [self presentViewController:nav animated:YES completion:nil];
}

@end
