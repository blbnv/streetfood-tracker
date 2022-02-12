//
//  AppReducer.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import ComposableArchitecture

let appReducer = Reducer<AppState, AppAction, AppEnvironment>.combine(
    foodMapReducer.pullback(state: /AppState.foodMap,
                            action: /AppAction.foodMap,
                            environment: { _ in FoodMapEnvironment() })
)
