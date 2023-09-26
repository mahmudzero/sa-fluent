// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let depDeps:  [String] = []
let debgDeps: [String] = []
let devDeps:  [String] = [ "sa-fluent" ] + debgDeps;
let testDeps: [String] = [] + devDeps;

let package = Package(
    name: "sa-fluent",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "sa-fluent",
            targets: ["sa-fluent"]
        ),
    ],
    dependencies: [
        .package(),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "sa-fluent",
            dependencies: depDeps
        ),
        .devTarget(
            name: "sa-fluentDev",
            dependencies: devDeps
        ),
        .testTarget(
            name: "sa-fluentTests",
            dependencies: testDeps
        ),
    ]
)
