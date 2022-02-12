//
//  FoodMapReducer.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import ComposableArchitecture

public let foodMapReducer = Reducer<FoodMapState, FoodMapAction, FoodMapEnvironment> { state, action, _ in
    switch action {
    case .onAppear:
        state = .loading
        return .none
    }
}
