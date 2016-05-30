//
//  ViewController.m
//  blocknew
//
//  Created by 张 荣桂 on 16/5/30.
//  Copyright © 2016年 张 荣桂. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
#import "collectionViewController.h"
@interface ViewController ()<secondvclDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   //1.block声明
   __block int num=0;
    int (^newBlock)(int a,int b)=^(int a,int b)
    {
        num=a+b;
        return num;
    };
  int c=newBlock(1,1);
    NSLog(@"%d",c);
    [self create];
}
-(void)create
{
    typedef int (^myBlock)(int a,int b);
    myBlock block1;
    int c=3;
    NSLog(@"%p",&c);
    block1 =^ (int a,int b)
    {
        NSLog(@"%p",&c);
        return a+b+c;
    };
    NSLog(@"====%d",block1(1,1));


}
- (void)setTextfileValues:(NSString *)str
{
    NSLog(@"%@",str);

    self.labName.text=str;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chuanz:(UIButton *)sender
{
    secondViewController *secondvcl=[[secondViewController alloc]init];
    secondvcl.DelegateValues=self;
   
    secondvcl.setValues= ^ (NSString *  str)
    {
        self.labName2.text=str;
    
    };
    [self presentViewController:secondvcl animated:YES completion:nil];
}

- (IBAction)btn:(UIButton *)sender
{
    collectionViewController *con=[[collectionViewController alloc]init];
    [self presentViewController:con animated:YES completion:nil];
}
@end
