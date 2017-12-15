//
// Created by Bartel on 10.07.15.
// Copyright (c) 2015 Jan Bartel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IVISPERViewControllerPresenter.h"
#import "VISPERViewPresenter.h"

@interface VISPERViewControllerPresenter : VISPERViewPresenter <IVISPERViewControllerPresenter>


/**
 * called when a view event happens
 */
-(void)viewEvent:(NSObject<IVISPERViewEvent>*)event
        withView:(UIView*)view
   andController:(UIViewController*)viewController;


/**
 * Called when view controller loads the view
 **/
-(void)   loadView:(UIView*)view
    withController:(UIViewController*)viewController
             event:(NSObject<IVISPERViewEvent>*)event;


/**
 * Called when view controller did the viewDidLoad method
 **/
-(void)viewDidLoad:(UIView*)view
    withController:(UIViewController*)viewController
             event:(NSObject<IVISPERViewEvent>*)event;


/**
 * Called when view controller did the viewWillAppear method
 **/
- (void)viewWillAppear:(BOOL)animated
                  view:(UIView*)view
        withController:(UIViewController*)viewController
               onEvent:(NSObject<IVISPERViewEvent>*)event;


/**
 * Called when view controller did the viewDidAppear method
 **/
- (void)viewDidAppear:(BOOL)animated
                 view:(UIView*)view
       withController:(UIViewController*)viewController
              onEvent:(NSObject<IVISPERViewEvent>*)event;


/**
 * Called when view controller did the viewWillDisappear method
 **/
- (void)viewWillDisappear:(BOOL)animated
                     view:(UIView*)view
           withController:(UIViewController*)viewController
                  onEvent:(NSObject<IVISPERViewEvent>*)event;


/**
 * Called when view controller did the viewDidDisappear method
 **/
- (void)viewDidDisappear:(BOOL)animated
                    view:(UIView*)view
          withController:(UIViewController*)viewController
                 onEvent:(NSObject<IVISPERViewEvent>*)event;

/**
 * Called on orientation change
 **/
-(void)viewWillTransitionToSize:(CGSize)size
      withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
                           view:(UIView*)view
                 withController:(UIViewController*)controller
                        onEvent:(NSObject<IVISPERViewEvent>*)event;



/**
 * Called on memory warning
 **/
- (void)didReceiveMemoryWarning:(UIView*)view
withController:(UIViewController*)controller
                        onEvent:(NSObject<IVISPERViewEvent>*)event;


-(void)willRouteToViewController:(UIViewController*)viewController
                 onWireframe:(NSObject<IVISPERWireframe>*)wireframe
                routePattern:(NSString*)routePattern
                    priority:(NSInteger)priority
                     options:(NSObject<IVISPERRoutingOption>*)options
                  parameters:(NSDictionary *)parameters;

-(void)didRouteToViewController:(UIViewController*)viewController
                  onWireframe:(NSObject<IVISPERWireframe>*)wireframe
                 routePattern:(NSString*)routePattern
                     priority:(NSInteger)priority
                      options:(NSObject<IVISPERRoutingOption>*)options
                   parameters:(NSDictionary *)parameters;

/**
 * Called before pushing a controller of this presenter
 **/
-(void)willPushViewController:(UIViewController*)viewController
                  onWireframe:(NSObject<IVISPERWireframe>*)wireframe
                 routePattern:(NSString*)routePattern
                     priority:(NSInteger)priority
                      options:(NSObject<IVISPERRoutingOption>*)options
                   parameters:(NSDictionary *)parameters;

/**
 * Called after pushing a controller of this presenter
 **/
-(void)didPushViewController:(UIViewController*)viewController
                 onWireframe:(NSObject<IVISPERWireframe>*)wireframe
                routePattern:(NSString*)routePattern
                    priority:(NSInteger)priority
                     options:(NSObject<IVISPERRoutingOption>*)options
                  parameters:(NSDictionary *)parameters;

/**
 * Called before modal presenting a controller of this presenter
 **/
-(void)willPresentViewController:(UIViewController*)viewController
                     onWireframe:(NSObject<IVISPERWireframe>*)wireframe
                    routePattern:(NSString*)routePattern
                        priority:(NSInteger)priority
                         options:(NSObject<IVISPERRoutingOption>*)options
                      parameters:(NSDictionary *)parameters;


/**
 * Called after modal presenting a controller of this presenter
 **/
-(void)didPresentViewController:(UIViewController*)viewController
                    onWireframe:(NSObject<IVISPERWireframe>*)wireframe
                   routePattern:(NSString*)routePattern
                       priority:(NSInteger)priority
                        options:(NSObject<IVISPERRoutingOption>*)options
                     parameters:(NSDictionary *)parameters;


@end