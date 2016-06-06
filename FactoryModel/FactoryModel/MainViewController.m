//
//  MainViewController.m
//  FactoryModel
//
//  Created by yuqi on 16/6/6.
//  Copyright © 2016年 yuqi. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

/**
 *  数字一
 */
@property (nonatomic,strong)UITextField *FirstNum;
/**
 *  数字二
 */
@property (nonatomic,strong)UITextField *SecondNum;

/**
 *  结果label
 */
@property (nonatomic,strong)UILabel *ResultLabel;
/**
 *  操作方法
 */
@property (nonatomic,strong)UILabel *OperationLable;

/**
 *  加
 */
@property (nonatomic,strong)UIButton *AddOperation;
/**
 *  减
 */
@property (nonatomic,strong)UIButton *MinusOperation;
/**
 *  乘
 */
@property (nonatomic,strong)UIButton *MultiplyOperation;
/**
 *  除
 */
@property (nonatomic,strong)UIButton *DivideOperation;


@property (nonatomic,strong)UIButton *ResuleButton;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor orangeColor];
    [self.view addSubview:self.FirstNum];
    [self.view addSubview:self.SecondNum];
    [self.view addSubview:self.OperationLable];
    [self.view addSubview:self.ResultLabel];
    [self.view addSubview:self.AddOperation];
    [self.view addSubview:self.MinusOperation];
    [self.view addSubview:self.MultiplyOperation];
    [self.view addSubview:self.DivideOperation];
    [self.view addSubview:self.ResuleButton];
}

-(UITextField *)FirstNum
{
    if (!_FirstNum) {
        _FirstNum =[[UITextField alloc]initWithFrame:CGRectMake(0, 40, self.view.frame.size.width/2-40, 40)];
        _FirstNum.placeholder = @"请输入第一个数字";
        _FirstNum.keyboardType =UIKeyboardTypeNumberPad;
    }
    return _FirstNum;
}
-(UITextField *)SecondNum
{
    if (!_SecondNum) {
        _SecondNum =[[UITextField alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2+40, 40, self.view.frame.size.width/2-40, 40)];
        _SecondNum.placeholder = @"请输入第二个数字";
        _SecondNum.keyboardType =UIKeyboardTypeNumberPad;

    }
    return _SecondNum;
}
-(UILabel *)ResultLabel
{
    if (!_ResultLabel) {
        _ResultLabel =[[UILabel alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 40)];
        _ResultLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _ResultLabel;
}
-(UILabel *)OperationLable
{
    if (!_OperationLable) {
        _OperationLable =[[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-40, 40, 80, 40)];
        _OperationLable.font =[UIFont systemFontOfSize:20];
        _OperationLable.textAlignment = NSTextAlignmentCenter;
    }
    return _OperationLable;
}
-(UIButton *)AddOperation
{
    if (!_AddOperation ) {
        _AddOperation =[[UIButton alloc]initWithFrame:CGRectMake(0, 160, self.view.frame.size.width/4-10, 40)];
        _AddOperation.backgroundColor = [UIColor blueColor];
        [_AddOperation setTitle:@"加" forState:UIControlStateNormal];
        _AddOperation.tag = 1;
        [_AddOperation addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AddOperation;
}

-(UIButton *)MinusOperation
{
    if (!_MinusOperation ) {
        _MinusOperation =[[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/4, 160, self.view.frame.size.width/4-10, 40)];
        _MinusOperation.backgroundColor = [UIColor blueColor];
        [_MinusOperation setTitle:@"减" forState:UIControlStateNormal];
        _MinusOperation.tag = 2;
        [_MinusOperation addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _MinusOperation;
}

-(UIButton *)MultiplyOperation
{
    if (!_MultiplyOperation ) {
        _MultiplyOperation =[[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2, 160, self.view.frame.size.width/4-10, 40)];
        _MultiplyOperation.backgroundColor = [UIColor blueColor];
        [_MultiplyOperation setTitle:@"乘" forState:UIControlStateNormal];
        _MultiplyOperation.tag = 3;
        [_MultiplyOperation addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _MultiplyOperation;
}

-(UIButton *)DivideOperation
{
    if (!_DivideOperation ) {
        _DivideOperation =[[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width*3/4, 160, self.view.frame.size.width/4-10, 40)];
        _DivideOperation.backgroundColor = [UIColor blueColor];
        [_DivideOperation setTitle:@"除" forState:UIControlStateNormal];
        _DivideOperation.tag = 4;
        [_DivideOperation addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _DivideOperation;
}
-(UIButton *)ResuleButton
{
    if (!_ResuleButton) {
        _ResuleButton =[[UIButton alloc]initWithFrame:CGRectMake(0, 220, self.view.frame.size.width, 40)];
        [_ResuleButton setTitle:@"结果" forState:UIControlStateNormal];
        _ResuleButton.backgroundColor =[UIColor greenColor];
        [_ResuleButton addTarget:self action:@selector(resultClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ResuleButton;
}
-(void)resultClick
{
    NSLog(@"求结果");
}
-(void)buttonClick:(UIButton *)sender
{
    switch (sender.tag) {
        case 1:
        {
            self.OperationLable.text = @"+";
        }
            break;
        case 2:
        {
            self.OperationLable.text = @"-";
        }
            break;
        case 3:
        {
            self.OperationLable.text = @"*";
        }
            break;
        case 4:
        {
            self.OperationLable.text = @"/";
        }
            break;
        default:
            break;
    }
}
@end
