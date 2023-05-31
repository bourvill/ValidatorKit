// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "ValidatorKit",
    products: [
        .library(
            name: "ValidatorKit",
            targets: ["ValidatorKit"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ValidatorKit",
            dependencies: []
        ),
        .testTarget(
            name: "ValidatorKitTests",
            dependencies: ["ValidatorKit"]
        ),
    ]
)
