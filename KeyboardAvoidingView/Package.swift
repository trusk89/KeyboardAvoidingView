// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KeyboardAvoidingView",
    products: [
        .library(
            name: "KeyboardAvoidingView",
            targets: ["KeyboardAvoidingView"]),
    ],
    dependencies: [
        .package(url: "https://github.com/APUtils/ViewState", from: "1.2.0"),
    ],
    targets: [
        .target(
            name: "KeyboardAvoidingView",
            dependencies: ["ViewState"],
            path:"Classes",
            exclude: ["KeyboardAvoidingViewLoader.m", "KeyboardAvoidingViewLoader.h"])
    ]
)
