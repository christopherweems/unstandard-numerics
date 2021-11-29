// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "unstandard-numerics",
    products: [
        .library(
            name: "unstandardNumerics",
            targets: ["unstandardNumerics"]),
        
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-numerics.git", from: "1.0.2"),
        
    ],
    targets: [
        .target(
            name: "unstandardNumerics",
            dependencies: [
                .product(name: "Numerics", package: "swift-numerics"),
                
            ]),
        
        .testTarget(
            name: "unstandardNumericsTests",
            dependencies: ["unstandardNumerics"]),
        
    ]
)
