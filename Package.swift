// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "RSAppMovementMonitor",
    platforms: [.macOS("10.12")],
    products: [
        .library(name: "RSAppMovementMonitor", targets: ["RSAppMovementMonitor"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "RSAppMovementMonitor", dependencies: [], path: "."),
    ]
)
