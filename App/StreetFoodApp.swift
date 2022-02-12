//
//  StreetFoodApp.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import ComposableArchitecture
import SwiftUI

@main
struct StreetFoodApp: App {
    let store = Store<AppState, AppAction>(initialState: .defaultState(),
                                           reducer: appReducer,
                                           environment: AppEnvironment())
    var body: some Scene {
        WindowGroup {
            FoodMapView(store: self.store.scope(state: \.foodMap, action: AppAction.foodMap))
        }
    }
}
