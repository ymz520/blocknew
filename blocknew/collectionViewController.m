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
    [self.view addSubview:collectionview];
}
#pragma mark-有多少cell
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 81;
}

#pragma mark-类容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:_cell forIndexPath:indexPath];
    cell.backgroundColor=[UIColor colorWithRed:(arc4random()%255)/255 green:(arc4random()%255)/255 blue:(arc4random()%255)/255 alpha:1];
    return cell;
}
#pragma mark-有多少组
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
#pragma mark --UICollectionViewDelegate

//UICollectionView被选中时调用的方法

-( void )collectionView:( UICollectionView *)collectionView didSelectItemAtIndexPath:( NSIndexPath *)indexPath

{
    
    UICollectionViewCell * cell = ( UICollectionViewCell *)[collectionView cellForItemAtIndexPath :indexPath];
    
    cell. backgroundColor = [ UIColor colorWithRed :(( arc4random ()% 255 )/ 255.0 ) green :(( arc4random ()% 255 )/ 255.0 ) blue :(( arc4random ()% 255 )/ 255.0 ) alpha : 1.0f ];
    
}

//返回这个UICollectionViewCell是否可以被选择

-( BOOL )collectionView:( UICollectionView *)collectionView shouldSelectItemAtIndexPath:( NSIndexPath *)indexPath

{
    
    return YES ;
    
}

#pragma mark --UICollectionViewDelegateFlowLayout

//定义每个UICollectionView 的大小

- ( CGSize )collectionView:( UICollectionView *)collectionView layout:( UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:( NSIndexPath *)indexPath

{
    
    return CGSizeMake ( self.view.bounds.size.width*0.25 , self.view.bounds.size.width*0.25 );
    
}

//定义每个UICollectionView 的边距

-( UIEdgeInsets )collectionView:( UICollectionView *)collectionView layout:( UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:( NSInteger )section

{
    
    return UIEdgeInsetsMake ( (self.view.bounds.size.width-collectionView.bounds.size.width)/4, (self.view.bounds.size.width-collectionView.bounds.size.width)/4 , (self.view.bounds.size.width-collectionView.bounds.size.width)/4 , (self.view.bounds.size.width-collectionView.bounds.size.width)/4 );
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor yellowColor];
    [self initCollectionview];
}
@end
