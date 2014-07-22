//
//  ViewController.m
//  masktest
//
//  Created by Giv Parvaneh on 7/17/14.
//  Copyright (c) 2014 Giv Parvaneh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    m_testView = [[TestView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:m_testView];
    
    
    //self.circ.layer.cornerRadius = CGRectGetWidth(self.circ.frame)/2;
    //self.circ.clipsToBounds = YES;
}

-(void)setRoundedView:(UIView *)roundedView toDiameter:(float)newSize;
{
    CGPoint saveCenter = roundedView.center;
    CGRect newFrame = CGRectMake(roundedView.frame.origin.x, roundedView.frame.origin.y, newSize, newSize);
    roundedView.frame = newFrame;
    roundedView.layer.cornerRadius = roundedView.frame.origin.x/2;
    roundedView.center = saveCenter;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onGesture:(id)sender {
    if ([sender isKindOfClass:[UIPanGestureRecognizer class]]) {
        // it's pan gesture
        UIPanGestureRecognizer *recognizer = (UIPanGestureRecognizer *)sender;
        
        if(recognizer.state == UIGestureRecognizerStateBegan || recognizer.state == UIGestureRecognizerStateChanged)
        {
            
            CGPoint nextPoint = [recognizer translationInView:self.view];
            CGPoint currentPoint = self.circ.center;
            
            currentPoint.x += nextPoint.x;
            currentPoint.y += nextPoint.y;
            
            self.circ.center = currentPoint;
            
            [recognizer setTranslation:CGPointZero inView:self.view];
            
        }
        
        return;
    }
}
@end
