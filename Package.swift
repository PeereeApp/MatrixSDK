// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "MatrixSDK",
    products: [
        .library(name: "MatrixSDK", targets: ["MatrixSDK"])
    ],
    targets: [
        .binaryTarget(name: "MatrixSDK", url: "https://github.com/PeereeApp/MatrixSDK/releases/download/v0.27.6/MatrixSDK.xcframework.zip", checksum: "271396fdfed429b93faf4bd580baa0dc5f1058ee6affd3bd8eb874cc65eadf22")
    ]
)
