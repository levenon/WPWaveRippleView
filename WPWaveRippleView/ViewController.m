//
//  ViewController.m
//  WPWaveRippleView
//
//  Created by xulinfeng on 2016/10/29.
//  Copyright © 2016年 markejave. All rights reserved.
//

#import "ViewController.h"
#import "WPWaveRippleView.h"

@interface ViewController ()

@property (nonatomic, strong) WPWaveRippleView *waveRippleView;

@property (nonatomic, strong) UIButton *exchangeAnimationStatusButton;

@end

@implementation ViewController

- (void)loadView{
    [super loadView];
    
    self.waveRippleView = [[WPWaveRippleView alloc] initWithTintColor:[UIColor redColor] minRadius:50 waveCount:5 timeInterval:1 duration:4];
    self.waveRippleView.frame = CGRectMake(20, 100, 300, 300);
    
    self.exchangeAnimationStatusButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.exchangeAnimationStatusButton.frame = CGRectMake(100, 450, 100, 44);
    
    [[self exchangeAnimationStatusButton] setTitle:@"开始" forState:UIControlStateNormal];
    [[self exchangeAnimationStatusButton] setTitle:@"停止" forState:UIControlStateSelected];
    [[self exchangeAnimationStatusButton] addTarget:self action:@selector(didClickExchangeAnimationStatus:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [[self view] addSubview:[self waveRippleView]];
    [[self view] addSubview:[self exchangeAnimationStatusButton]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - actions

- (IBAction)didClickExchangeAnimationStatus:(UIButton *)sender{
    sender.selected = ![sender isSelected];
    
    if ([sender isSelected]) {
        [[self waveRippleView] startAnimating];
    } else {
        [[self waveRippleView] stopAnimating];
    }
}

@end
