//
//  AppState.swift
//  VISPER-Redux-Sourcery-Example
//
//  Created by bartel on 24.03.18.
//  Copyright © 2018 Jan Bartel. All rights reserved.
//

import Foundation
import VISPER_Sourcery

struct AppState: WithAutoInitializers, WithAutoGeneralInitializer,AutoAppReducer,AutoReducer, Equatable {
    let styleState: StyleState
    let userState: UserState?

// sourcery:inline:auto:AppState.GenerateInitializers
    // auto generated init function for AppState
internal init(styleState: StyleState, userState: UserState? = nil){
            self.styleState = styleState
            self.userState = userState
    }
// sourcery:end
}


