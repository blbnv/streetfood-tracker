//
//  FoodMapView.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import MapKit
import SwiftUI

struct FoodMapView: View {
    var body: some View {
        Map(mapRect: .constant(.world))
            .ignoresSafeArea()
    }
}

struct FoodMapViewPreview: PreviewProvider {
    static var previews: some View {
        FoodMapView()
    }
}
