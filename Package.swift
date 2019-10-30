// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "KMPlaceholderTextView",
    platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "KMPlaceholderTextView",
            targets: ["KMPlaceholderTextView"]),
    ],
    targets: [
        .target(
            name: "KMPlaceholderTextView",
            path: "KMPlaceholderTextView"),
    ],
    swiftLanguageVersions: [.v4_2]
)
