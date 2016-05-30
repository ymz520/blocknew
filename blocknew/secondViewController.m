//
//  secondViewController.m
//  blocknew
//
//  Created by 张 荣桂 on 16/5/30.
//  Copyright © 2016年 张 荣桂. All rights reserved.
//

#import "secondViewController.h"
#import "ViewController.h"
@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(UIButton *)sender
{
    
    
    [self.DelegateValues setTextfileValues:self.valuess.text];
    self.setValues(self.valuess.text);
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
//-(void)setTextfileValues:(NSString *)str
//{
//    
//    NSLog(@"%@",str);
//}
@end
