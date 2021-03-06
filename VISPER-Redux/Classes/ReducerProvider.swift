//
//  AppReducer.swift
//  Pods-VISPER_Redux_Example
//
//  Created by Jan Bartel on 31.10.17.
//

import Foundation
import VISPER_Core

/// An object which gives you all responsible reducers for a given action and state
public protocol ReducerProvider {
    
    
    /// Returns all responsible synchron reducers for a given action, state pair
    ///
    /// - Parameters:
    ///   - action: an action
    ///   - state: the current state
    /// - Returns: all responsible reducers for this action state pair
    func reducers<StateType>(action: Action,state: StateType) -> [AnyActionReducer]
    
    
    /// Returns all responsible async reducers for a given action, state pair
    ///
    /// - Parameters:
    ///   - action: an action
    ///   - state: the current state
    /// - Returns: all responsible reducers for this action state pair
    func reducers<StateType>(action: Action,state: StateType) -> [AnyAsyncActionReducer]  
    
    
    /// reduce your state for an action, for all responsible reducers
    ///
    /// - Parameters:
    ///   - action: an action
    ///   - state: your current state
    /// - Returns: your new state
    func reduce<StateType>(action: Action,state: StateType) -> StateType
    
    
    
    /// reduce your state for an action, for all responsible reducers
    ///
    /// - Parameters:
    ///   - action: an action
    ///   - state: your current state
    ///   - completion: copletion called when the action was reduced
    /// - Returns: your new state
    func reduce<StateType>(action: Action,state: StateType, completion: @escaping () -> Void) -> StateType
    
}



