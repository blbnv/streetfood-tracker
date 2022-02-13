//
//  LocationInfo.swift
//  
//
//  Created by Oleksandr Balabanov on 13.02.2022.
//

import CoreLocation
import Foundation

public struct LocationInfo: Equatable {
    let latitude: Double
    let longitude: Double

    public var coordinates: CLLocationCoordinate2D {
        .init(latitude: self.latitude, longitude: self.longitude)
    }
}
