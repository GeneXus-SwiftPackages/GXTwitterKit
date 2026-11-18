// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "GXTwitterKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "GXTwitterKit",
            targets: ["GXTwitterKitWrapper"])
    ],
    targets: [
        .target(name: "GXTwitterKitWrapper",
            dependencies: [
                "TwitterKit",
                "TwitterCore"
            ],
            path: "Sources"),
        .binaryTarget(
            name: "TwitterCore",
            url: "https://github.com/GeneXus-SwiftPackages/GXTwitterKit/releases/download/v3.3.2/TwitterCore.xcframework.zip",
            checksum: "4464d51465d0c36c05aed20bbf422bef65d6244fe2ace6fe6c2f25339053000e"
        ),
        .binaryTarget(
            name: "TwitterKit",
            url: "https://github.com/GeneXus-SwiftPackages/GXTwitterKit/releases/download/v3.5.3/TwitterKit.xcframework.zip",
            checksum: "f80119722638e30ddeae60269dc72c60d8ba97bc1665ba13e4cd24ed2bd2ac5d"
        )
    ]
)
