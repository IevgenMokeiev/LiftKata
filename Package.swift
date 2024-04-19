// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "LiftKata",
    platforms: [.macOS(.v12)],
    products: [
        .executable(name: "LiftKata", targets: ["LiftKata"])
    ],
    targets: [
        .executableTarget(
            name: "LiftKata",
            path: "Sources",
            resources: []
        ),
        .testTarget(
            name: "LiftKataTests",
            dependencies: ["LiftKata"], 
            path: "Tests",
            resources: []
        ),
    ]
)
