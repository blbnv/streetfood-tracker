//
//  AppState.swift
//  
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import FoodMapCore
import Foundation

public struct AppState {
    public var foodMap: FoodMapState
}

public extension AppState {
    static func defaultState() -> AppState {
        return .init(foodMap: .defaultState())
    }
}
