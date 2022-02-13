//
//  FoodMapReducer.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import ComposableArchitecture

public let foodMapReducer = Reducer<FoodMapState, FoodMapAction, FoodMapEnvironment> { state, action, environment in
    switch action {
    case .fetchResponse(let result):
        state = .loaded(items: [])
        return .none
    case .onAppear:
        state = .loading
        return environment.foodFetchingService
            .fetch()
            .catchToEffect(FoodMapAction.fetchResponse)
    }
}
