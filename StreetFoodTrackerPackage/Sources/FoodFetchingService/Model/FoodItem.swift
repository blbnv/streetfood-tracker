//
//  FoodItem.swift
//  streetfood-tracker
//
//  Created by Oleksandr Balabanov on 12.02.2022.
//

import Foundation

public struct FoodItem: Equatable {
    public let id: String = UUID().uuidString
    public let name: String
    public let location: LocationInfo
}
