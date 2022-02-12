// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StreetFoodTrackerPackage",
    products: [
        .library(name: "LoggingService", targets: ["LoggingService"])
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "LoggingService", dependencies: []),
        .testTarget(
            name: "StreetFoodTrackerPackageTests",
            dependencies: []),
    ]
)
