//
//  FoodFetchingService.swift
//  
//
//  Created by Oleksandr Balabanov on 13.02.2022.
//

import ComposableArchitecture
import Foundation

public protocol FoodFetchingServiceType {
    func fetch() -> Effect<[FoodItem], FoodFetchingError>
}

public final class FoodFetchingService: FoodFetchingServiceType {
    public init() { }

    public func fetch() -> Effect<[FoodItem], FoodFetchingError> {
        // swiftlint:disable number_separator
        let point1 = FoodItem(name: "Steakhouse",
                              location: .init(latitude: 50.44732476690437,
                                              longitude: 30.51421100599585))

        let point2 = FoodItem(name: "Doner House",
                              location: .init(latitude: 50.4422519007894,
                                              longitude: 30.522046010562494))
        return .init(value: [point1, point2])
        // swiftlint:enable number_separator
    }
}
