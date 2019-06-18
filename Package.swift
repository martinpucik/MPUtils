// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "MPUtils",
    dependencies: [],
    targets: [
        .target(
            name: "MPUtils",
            path: "Sources"),
        .testTarget(
            name: "MPUtilsTests",
            dependencies: ["MPUtils"]),
    ]
)
