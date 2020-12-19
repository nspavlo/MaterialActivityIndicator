// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MaterialActivityIndicator",
    products: [
        .library(
            name: "MaterialActivityIndicator",
            targets: ["MaterialActivityIndicator"]),
    ],
    targets: [
        .target(
            name: "MaterialActivityIndicator",
            dependencies: []),
    ]
)
