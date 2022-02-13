//
//  FoodMapState.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import FoodFetchingService
import Foundation

public enum FoodMapState: Equatable {
    case idle
    case loading
    case loaded(items: [FoodItem])
    case failed

    public var items: [FoodItem] {
        if case .loaded(let foodItems) = self {
            return foodItems
        }
        return []
    }
}

public extension FoodMapState {
    static func defaultState() -> FoodMapState {
        return .idle
    }
}
