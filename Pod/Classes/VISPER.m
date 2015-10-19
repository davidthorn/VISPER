//
//  VISPER.m
//  Pods
//
//  Created by Bartel on 21.08.15.
//
//

#import "VISPER.h"
#import "VISPERRoutingOptionsFactory.h"

@implementation VISPER

static NSObject<IVISPERRoutingOptionsFactory> *routingOptionsFactory = nil;

+ (id)sharedRoutingOptionsFactory {

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        routingOptionsFactory = [[VISPERRoutingOptionsFactory alloc] init];
    });
    return routingOptionsFactory;
}

+ (void)setSharedRoutingOptionsFactory:(NSObject<IVISPERRoutingOptionsFactory>*)factory{
    routingOptionsFactory = factory;
}

+(NSObject<IVISPERRoutingOption> *)routingOption{
    return [[VISPER sharedRoutingOptionsFactory] routingOption];
}

+(NSObject<IVISPERRoutingOption> *)routingOption:(BOOL)animated{
    return [[VISPER sharedRoutingOptionsFactory] routingOption:animated];
}

+(NSObject<IVISPERRoutingOption> *)routingOptionPush{
    return [[VISPER sharedRoutingOptionsFactory] routingOptionPush];
}

+(NSObject<IVISPERRoutingOption> *)routingOptionPush:(BOOL)animated{
    return [[VISPER sharedRoutingOptionsFactory] routingOptionPush:animated];
}

+(NSObject<IVISPERRoutingOption> *)routingOptionModal{
    return [[VISPER sharedRoutingOptionsFactory] routingOptionModal];
}

+(NSObject<IVISPERRoutingOption> *)routingOptionModal:(BOOL)animated{
    return [[VISPER sharedRoutingOptionsFactory] routingOptionModal:animated];
}

+(NSObject<IVISPERRoutingOption> *)routingOptionPresentRootVC{
    return [[VISPER sharedRoutingOptionsFactory] routingOptionPresentRootVC];
}

+(NSObject<IVISPERRoutingOption> *)routingOptionPresentRootVC:(BOOL)animated{
    return [[VISPER sharedRoutingOptionsFactory] routingOptionPresentRootVC:animated];
}

+(NSObject<IVISPERRoutingOption> *)routingOptionReplaceTopVC{
    return [[VISPER sharedRoutingOptionsFactory] routingOptionReplaceTopVC];
}

+(NSObject<IVISPERRoutingOption> *)routingOptionReplaceTopVC:(BOOL)animated{
    return [[VISPER sharedRoutingOptionsFactory] routingOptionReplaceTopVC:animated];
}


+(NSObject<IVISPERRoutingOption> *)routingOptionDoNotPresentVC:( void(^)(NSString *routePattern,
                                                                         UIViewController *controller,
                                                                         NSObject<IVISPERRoutingOption>*options,
                                                                         NSDictionary *parameters,
                                                                         NSObject<IVISPERWireframe>*wireframe))completion{
    return [[VISPER sharedRoutingOptionsFactory] routingOptionDoNotPresentVC:completion];
}

@end
