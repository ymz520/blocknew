//
//  ViewController.h
//  blocknew
//
//  Created by 张 荣桂 on 16/5/30.
//  Copyright © 2016年 张 荣桂. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)chuanz:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *labName;
@property (weak, nonatomic) IBOutlet UILabel *labName2;
- (IBAction)btn:(UIButton *)sender;

@end

