// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KMPlaceholderTextView",
    products: [
        .library(
            name: "KMPlaceholderTextView",
            targets: ["KMPlaceholderTextView"]),
    ],
    targets: [
        .target(
            name: "KMPlaceholderTextView"),
    ]
)
