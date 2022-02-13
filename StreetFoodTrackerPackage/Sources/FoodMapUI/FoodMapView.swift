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
    // swiftlint:disable number_separator
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 50.450001, longitude: 30.523333),
        latitudinalMeters: 5000, longitudinalMeters: 5000)
    // swiftlint:enable number_separator

    public init(store: Store<FoodMapState, FoodMapAction>) {
        self.store = store
    }

    public var body: some View {
        WithViewStore(self.store) { viewStore in
            Map(coordinateRegion: $region,
                annotationItems: viewStore.state.items,
                annotationContent: { item in
                MapPin(coordinate: item.location.coordinates)
            })
                .ignoresSafeArea()
                .onAppear(perform: { viewStore.send(.onAppear) })
        }
    }
}
