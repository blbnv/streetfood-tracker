//
//  FoodMapState.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import Foundation

enum FoodMapState: Equatable {
    case idle
    case loading
    case loaded(items: [FoodItem])
    case failed
}

extension FoodMapState {
    static func defaultState() -> Self {
        return .idle
    }
}
