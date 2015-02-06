//
//  SampleViewController.m
//  SampleDelegate
//
//  Created by yasuhisa.arakawa on 2015/02/05.
//  Copyright (c) 2015年 Classmethod, Inc. All rights reserved.
//

#import "SampleViewController.h"

@interface SampleViewController ()

@property (nonatomic, strong) NSDictionary *anyInfo;

@end

@implementation SampleViewController

#pragma mark - Lifecycle methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.anyInfo = @{ @"date" : [NSDate date]};
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - IBAction method

- (IBAction)didTapCloseButton:(id)sender
{
    // デリゲートインスタンスが dismissSampleView メソッドを実装しているか確認します。
    if ([self.delegate respondsToSelector:@selector(dismissSampleView)]) {
        // dismissSampleView が実装されているので、処理をデリゲートインスタンスで行います。
        [self.delegate dismissSampleView];
    }
    
    // デリゲートインスタンスが sampleView:willDismissWithInfo: メソッドを実装しているか確認します。
    if ([self.delegate respondsToSelector:@selector(sampleView:willDismissWithInfo:)]) {
        // sampleView:willDismissWithInfo: が実装されているので、処理をデリゲートインスタンスで行います。
        [self.delegate sampleView:self willDismissWithInfo:self.anyInfo];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
