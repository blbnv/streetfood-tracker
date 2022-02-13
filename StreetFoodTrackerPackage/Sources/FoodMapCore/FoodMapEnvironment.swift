//
//  FoodMapEnvironment.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import FoodFetchingService
import Foundation

public struct FoodMapEnvironment {
    public var foodFetchingService: FoodFetchingServiceType

    public init() {
        self.foodFetchingService = FoodFetchingService()
    }
}
