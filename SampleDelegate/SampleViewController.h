//
//  SampleViewController.h
//  SampleDelegate
//
//  Created by yasuhisa.arakawa on 2015/02/05.
//  Copyright (c) 2015年 Classmethod, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

// @interface 句より前にプロトコルを定義したい場合、かつ引数に自身のインスタンスを持つ場合には
// 自身のクラスを @class 句で定義する必要があります。
@class SampleViewController;

/**
 *  SampleViewControllerDelegate プロトコル
 */
@protocol SampleViewDelegate <NSObject>

/**
 *  モーダル表示を閉じる時に呼び出されます。
 *  引数なしのデリゲートメソッドです。
 */
- (void)dismissSampleView;

/**
 *  モーダル表示を閉じる時に呼び出されます。
 *  引数を持つデリゲートメソッドです。
 *
 *  @param sampleView SampleView インスタンス
 *  @param info       SampleView から通知したい情報
 */
- (void)sampleView:(SampleViewController *)sampleView willDismissWithInfo:(NSDictionary *)info;

@end

/**
 *  モーダル表示される画面クラスです。
 *  通知元のクラスになります。
 */
@interface SampleViewController : UIViewController

/**
 *  SampleViewDelegate インスタンス
 *  通知先のインスタンスが入ります。
 */
@property (nonatomic, weak) id<SampleViewDelegate> delegate;

@end