//
//  VISPERFeature.m
//  Pods
//
//  Created by Bartel on 20.08.15.
//
//

#import "VISPERFeature.h"

@interface VISPERFeature()

@property(nonatomic,strong)NSMutableArray *routePatternStrings;
@property(nonatomic,strong)NSObject<IVISPERWireframe>*wireframe;
@property(nonatomic,strong)VISPERCommandBus *commandBus;

@end

@implementation VISPERFeature

#pragma mark IVISPERFeature protocol

-(void)bootstrapWireframe:(NSObject<IVISPERWireframe> *)wireframe
               commandBus:(VISPERCommandBus*)commandBus{
    
    self.wireframe = wireframe;
    self.commandBus = commandBus;
    
    [wireframe addControllerServiceProvider:self withPriority:0];
    [wireframe addRoutingOptionsServiceProvider:self withPriority:0];


}

-(NSArray*)routePatterns{
    return [NSArray arrayWithArray:self.routePatternStrings];
}

-(void)addRoutePattern:(NSString*)routePattern{
    [self.routePatternStrings addObject:routePattern];
}

-(void)removeRoutePattern:(NSString*)routePattern{
    [self->_routePatternStrings removeObject:routePattern];
}


#pragma mark IVISPERWireframeViewControllerServiceProvider protocol
-(UIViewController* _Nullable )controllerForRoute:(NSString * _Nonnull)routePattern
                        routingOptions:(NSObject<IVISPERRoutingOption> * _Nonnull)options
                        withParameters:(NSDictionary * _Nonnull ) parameters{
    return nil;
}


#pragma mark IVISPERWireframeRoutingOptionsServiceProvider protocol
-(NSObject<IVISPERRoutingOption>* _Nullable)optionForRoutePattern:(NSString * _Nonnull )routePattern
                                             parameters:(NSDictionary * _Nonnull) dictionary
                                         currentOptions:(NSObject<IVISPERRoutingOption> * _Nullable)currentOptions{
    return currentOptions;
}


#pragma mark internal functions
-(NSMutableArray*)routePatternStrings{
    if(!self->_routePatternStrings){
        self->_routePatternStrings = [NSMutableArray array];
    }
    
    return self->_routePatternStrings;
}


@end
