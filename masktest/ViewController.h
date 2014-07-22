//
//  ViewController.h
//  masktest
//
//  Created by Giv Parvaneh on 7/17/14.
//  Copyright (c) 2014 Giv Parvaneh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "TestView.h"

@interface ViewController : UIViewController
{
    TestView* m_testView;
    NSTimer* m_timer;
}
@property (weak, nonatomic) IBOutlet UIView *circ;
- (IBAction)onGesture:(id)sender;


@end
