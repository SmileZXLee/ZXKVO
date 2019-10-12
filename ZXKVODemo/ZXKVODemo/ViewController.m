//
//  ViewController.m
//  ZXKVODemo
//
//  Created by 李兆祥 on 2018/8/22.
//  Copyright © 2018年 李兆祥. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ZXKVO.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *msgLabel;
@property (copy, nonatomic) NSString *msgStr;
@property (weak, nonatomic) IBOutlet UITextField *msgTf;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //监听msgTf中text属性的变化
    [self.msgTf zx_obsKey:@"text" handler:^(id newData, id oldData,id owner) {
        //不会循环引用，因此无需处理
        self.msgLabel.text = newData;
    }];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    self.msgTf.text = [NSString stringWithFormat:@"%u",(arc4random() % 501) + 500];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
