//
//  Example2VisperViewController.h
//  VISPER
//
//  Created by Bartel on 12.07.15.
//  Copyright (c) 2015 Jan Bartel. All rights reserved.
//

#import <UIKit/UIKit.h>

@import VISPER;

@interface Example2VisperViewController : VISPERViewController<IVISPERViewController>

@property NSObject<IVISPERWireframe>* visperWireframe;

- (IBAction)nextAction:(id)sender;


@end
