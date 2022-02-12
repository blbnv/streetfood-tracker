//
//  FoodMapState.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import Foundation

public enum FoodMapState: Equatable {
    case idle
    case loading
    case loaded(items: [FoodItem])
    case failed
}

public extension FoodMapState {
    static func defaultState() -> FoodMapState {
        return .idle
    }
}
