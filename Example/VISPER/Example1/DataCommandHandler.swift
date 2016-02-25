//
//  DataCommandHandler.swift
//  VISPER
//
//  Created by Jan Bartel on 25.02.16.
//  Copyright © 2016 Jan Bartel. All rights reserved.
//

import VISPER

class DataCommandHandler: NSObject,CommandHandlerProtocol {
    
    func isResponsible(command: Any!) -> Bool {
        return true
    }
    
    func process<ResultType>(command: Any!, completion: ((result: ResultType?, error: ErrorType?) -> Void)?) throws {
        completion?(result: "Meine Daten sind geladen" as? ResultType,error: nil)
    }
    
}
