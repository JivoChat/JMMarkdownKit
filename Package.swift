// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "JMMarkdownKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "JMMarkdownKit",
            targets: ["JMMarkdownKit"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/FluidGroup/TypedTextAttributes.git", from: "2.0.0"),
        .package(url: "https://github.com/JivoChat/JMDesignKit.git", .branch("master")),
        .package(url: "https://github.com/JivoChat/JFMarkdownKit.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "JMMarkdownKit",
            dependencies: [
                .product(name: "JMDesignKit", package: "JMDesignKit"),
                .product(name: "JFMarkdownKit", package: "JFMarkdownKit"),
                .product(name: "TypedTextAttributes", package: "TypedTextAttributes"),
            ],
            path: "JMMarkdownKit"
        )
    ]
)
