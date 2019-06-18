// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "MPUtils",
    platforms: [ .iOS(.v13) ],
    products: [
        .library(name: "MPUtils", targets: ["MPUtils"]),
    ],
    targets: [
        .target(name: "MPUtils", dependencies: []),
        .testTarget(name: "MPUtilsTests", dependencies: ["MPUtils"]),
    ]
)
