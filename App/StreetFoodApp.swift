//
//  StreetFoodApp.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import AppCore
import FoodMapUI
import SwiftUI

@main
struct StreetFoodApp: App {
    var body: some Scene {
        WindowGroup {
            FoodMapView(store: appStore.scope(state: \.foodMap, action: AppAction.foodMap))
        }
    }
}
