//
//  collectionViewController.m
//  blocknew
//
//  Created by 张 荣桂 on 16/5/30.
//  Copyright © 2016年 张 荣桂. All rights reserved.
//

#import "collectionViewController.h"
#define _cell @"acell"
@interface collectionViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@end

@implementation collectionViewController
-(void)initCollectionview
{
    UICollectionViewFlowLayout *flowlayout=[[UICollectionViewFlowLayout alloc]init];
    UICollectionView *collectionview=[[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:flowlayout];
    [collectionview registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:_cell];
    collectionview.backgroundColor=[UIColor whiteColor];
    collectionview.delegate=self;
    collectionview.dataSource=self;
}
#pragma mark-
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;

#pragma mark-
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
