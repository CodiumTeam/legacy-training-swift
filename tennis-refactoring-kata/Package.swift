// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Tennis",
    products: [
    ],
    dependencies: [
        .package(url: "https://github.com/YusukeHosonuma/SwiftParamTest.git", from: "2.2.1"),
    ],
    targets: [
        .testTarget(
            name: "TennisTests",
            dependencies: ["SwiftParamTest"],
            path: ""
        ),
    ]
)
