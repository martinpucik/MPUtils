// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MPUtils",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13)
    ],
    products: [
        .library(name: "MPUtils", targets: ["MPUtils"]),
        .library(name: "MPUtilsUIKit", targets: ["MPUtilsUIKit"])
    ],
    dependencies: [],
    targets: [
        .target(name: "MPUtils", dependencies: ["MPUtilsUIKit"]),
        .target(name: "MPUtilsUIKit"),
        .testTarget(name: "MPUtilsTests", dependencies: ["MPUtils"]),
    ],
    swiftLanguageVersions: [.v5]
)
