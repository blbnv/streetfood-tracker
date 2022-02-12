//
//  AppState.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import Foundation

struct AppState {
    var foodMap: FoodMapState
}

extension AppState {
    static func defaultState() -> Self {
        return .init(foodMap: .defaultState())
    }
}
