// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// swiftlint:disable literal_expression_end_indentation

let package = Package(
    name: "StreetFoodTrackerPackage",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "AppCore", targets: ["AppCore"]),
        .library(name: "FoodMapCore", targets: ["FoodMapCore"]),
        .library(name: "FoodMapUI", targets: ["FoodMapUI"]),
        .library(name: "FoodFetchingService", targets: ["FoodFetchingService"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            from: .init(stringLiteral: "0.33.1")),
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.8.0")
    ],
    targets: [
        .target(
            name: "AppCore",
            dependencies: [
                "FoodMapCore",
                .product(name: "ComposableArchitecture",
                         package: "swift-composable-architecture")]),
        .target(name: "FoodMapCore",
                dependencies: [
                    .product(name: "ComposableArchitecture",
                             package: "swift-composable-architecture"),
                    "FoodFetchingService"]),
        .target(name: "FoodMapUI",
                dependencies: [
                    "FoodMapCore",
                    .product(name: "ComposableArchitecture",
                             package: "swift-composable-architecture")]),
        .target(name: "FoodFetchingService",
                dependencies: [
                    .product(name: "ComposableArchitecture",
                             package: "swift-composable-architecture")
                ])
    ]
)

// swiftlint:enable literal_expression_end_indentation
