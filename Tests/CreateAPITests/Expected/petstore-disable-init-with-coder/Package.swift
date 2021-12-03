// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "petstore-disable-init-with-coder",
    platforms: [.iOS(.v15), .macCatalyst(.v15), .macOS(.v12), .watchOS(.v8), .tvOS(.v15)],
    products: [
        .library(name: "petstore-disable-init-with-coder", targets: ["petstore-disable-init-with-coder"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kean/APIClient", branch: "main"),
    ],
    targets: [
        .target(name: "petstore-disable-init-with-coder", dependencies: [.product(name: "APIClient", package: "APIClient")], path: "Sources")
    ]
)