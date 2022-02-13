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
        return .init(value: [])
    }
}
