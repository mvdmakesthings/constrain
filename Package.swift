// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Constrain",
    products: [
        .library(
            name: "Constrain",
            targets: ["Constrain"]),
    ],
    targets: [
        .target(
            name: "Constrain",
            dependencies: []),
        .testTarget(
            name: "ConstrainTests",
            dependencies: ["Constrain"]),
    ]
)
