// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "body",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "body",
            targets: [
                "body",
                "body_sdk_core",
                "body_effect_player",
                "body_scripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "body",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/body.zip",
            checksum: "6f7472213e0587d97d2a697fa7bf8202aca38a9ed018f434477fc8ed8941c6da"
        ),
        .target(
            name: "body_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "body_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "body_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
    ]
)
