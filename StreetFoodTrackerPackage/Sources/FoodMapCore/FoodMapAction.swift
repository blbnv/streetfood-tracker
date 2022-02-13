//
//  FoodMapAction.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import FoodFetchingService
import Foundation

public enum FoodMapAction: Equatable {
    case onAppear
    case fetchResponse(Result<[FoodItem], FoodFetchingError>)
}
