//
//  ViewController.m
//  SampleDelegate
//
//  Created by yasuhisa.arakawa on 2015/02/05.
//  Copyright (c) 2015年 Classmethod, Inc. All rights reserved.
//

#import "ViewController.h"
#import "SampleViewController.h"

@interface ViewController () <SampleViewDelegate>

@end

@implementation ViewController

#pragma mark - Lifecycle methods

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Segue method

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"SampleView"]) {
        SampleViewController *sampleViewController = segue.destinationViewController;
        // SampleViewController がインスタンス化されたタイミングでデリゲートインスタンス（self）をセット
        sampleViewController.delegate = self;
    }
}

#pragma mark - SampleViewDelegate methods

- (void)dismissSampleView
{
    NSLog(@"SampleViewが閉じられるタイミングで処理が行えます。");
}

- (void)sampleView:(SampleViewController *)sampleView willDismissWithInfo:(NSDictionary *)info
{
    NSLog(@"SampleViewが閉じられるタイミングで、info %@ を受け取って処理が行えます。", info);
}

@end
