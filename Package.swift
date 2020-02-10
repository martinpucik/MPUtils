// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MPUtils",
    platforms: [
        .iOS(SupportedPlatform.IOSVersion.v13)
    ],
    products: [
        .library(name: "MPUtils", targets: ["MPUtils"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "MPUtils", dependencies: []),
        .testTarget(name: "MPUtilsTests", dependencies: ["MPUtils"]),
    ],
    swiftLanguageVersions: [.v5]
)
