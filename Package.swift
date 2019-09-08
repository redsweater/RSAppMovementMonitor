// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "RSAppMovementMonitor",
    products: [
        .library(name: "RSAppMovementMonitor", targets: ["RSAppMovementMonitor"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "RSAppMovementMonitor", dependencies: [], path: "."),
    ]
)
