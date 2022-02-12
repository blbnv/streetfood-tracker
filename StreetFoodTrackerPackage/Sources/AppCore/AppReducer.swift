//
//  AppReducer.swift
//  
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import ComposableArchitecture
import FoodMapCore
import Foundation

public let appReducer = Reducer<AppState, AppAction, AppEnvironment>.combine(
    foodMapReducer.pullback(state: \.foodMap,
                            action: /AppAction.foodMap,
                            environment: { _ in FoodMapEnvironment() })
)

public let appStore = Store<AppState, AppAction>(initialState: .defaultState(),
                                                 reducer: appReducer,
                                                 environment: AppEnvironment())
