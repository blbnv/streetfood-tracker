//
//  FoodMapView.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import ComposableArchitecture
import FoodMapCore
import MapKit
import SwiftUI

public struct FoodMapView: View {
    private let store: Store<FoodMapState, FoodMapAction>

    public init(store: Store<FoodMapState, FoodMapAction>) {
        self.store = store
    }

    public var body: some View {
        WithViewStore(self.store) { viewStore in
            Map(mapRect: .constant(.world))
                .ignoresSafeArea()
                .onAppear(perform: { viewStore.send(.onAppear) })
        }
    }
}
