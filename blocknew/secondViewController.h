//
//  secondViewController.h
//  blocknew
//
//  Created by 张 荣桂 on 16/5/30.
//  Copyright © 2016年 张 荣桂. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol secondvclDelegate <NSObject>
- (void)setTextfileValues:(NSString *)str;
@end
@interface secondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *valuess;
@property(assign,nonatomic)id <secondvclDelegate> DelegateValues;
- (IBAction)back:(UIButton *)sender;
@property(nonatomic,copy)void (^setValues)(NSString * str);
@end
