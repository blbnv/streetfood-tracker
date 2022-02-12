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
        .library(name: "LoggingService", targets: ["LoggingService"])
    ],
    dependencies: [
        .package(
            name: "swift-composable-architecture",
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            from: .init(stringLiteral: "0.33.1"))
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
                             package: "swift-composable-architecture")]),
        .target(name: "FoodMapUI",
                dependencies: [
                    "FoodMapCore",
                    .product(name: "ComposableArchitecture",
                             package: "swift-composable-architecture")]),
        .target(name: "LoggingService", dependencies: [])
    ]
)

// swiftlint:enable literal_expression_end_indentation
