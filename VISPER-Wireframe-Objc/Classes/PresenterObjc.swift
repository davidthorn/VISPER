//
//  PresenterObjc.swift
//  VISPER-Wireframe-Objc
//
//  Created by bartel on 12.12.17.
//

import Foundation
import VISPER_Core

@objc public protocol PresenterObjcType {
    func addPresentationLogic(routeResult: RouteResultObjc, controller: UIViewController) throws
}

@objc open class PresenterObjc: NSObject,Presenter,PresenterObjcType {
    
    open let presenter: Presenter?
    open let presenterObjc: PresenterObjcType?
    
    public init(presenter: Presenter) {
        self.presenter = presenter
        self.presenterObjc = nil
    }
    
    public init(presenter: PresenterObjcType) {
        if let presenter = presenter as? PresenterObjc {
            self.presenter = presenter.presenter
            self.presenterObjc = nil
        } else {
            self.presenter = nil
            self.presenterObjc = presenter
        }
    }
    
    func addPresentationLogic(routeAnyResult: RouteResult, controller: UIViewController) throws {
        
        if let presenter = self.presenter {
            try presenter.addPresentationLogic(routeResult: routeAnyResult, controller: controller)
        } else if let presenterObjc = self.presenterObjc {
            let routeResultObjc = RouteResultObjc(routeResult: routeAnyResult)
            try presenterObjc.addPresentationLogic(routeResult: routeResultObjc, controller: controller)
        } else {
            fatalError("presenter or presenterObjc should be set")
        }
        
    }
    
    open func addPresentationLogic(routeResult: RouteResult, controller: UIViewController) throws {
        try self.addPresentationLogic(routeAnyResult: routeResult, controller: controller)
    }
    
    open func addPresentationLogic(routeResult: RouteResultObjc, controller: UIViewController) throws {
        try self.addPresentationLogic(routeAnyResult: routeResult , controller: controller)
    }
    
}
