// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PKAlgebra",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SimpleMath",
            targets: ["SimpleMath"]),
        .library(
            name: "Addition",
            targets: ["Addition"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", .upToNextMajor(from: "2.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PKAlgebra",
            dependencies: ["SwiftyBeaver"]),
        
        .testTarget(
            name: "PKAlgebraTests",
            dependencies: ["PKAlgebra"]),
        
        .binaryTarget(name: "Addition", url: "https://github.com/PravinTessellation/zipfiles/raw/main/SimplePackage_old/Addition.xcframework.zip", checksum: "cd128fd76d71bdf69c7d4317d83d36f415db99f6523fca01ff7ce8287f9e8097"),
        .binaryTarget(name: "SimpleMath", url: "https://github.com/PravinTessellation/zipfiles/raw/main/SimplePackage_old/SimpleMath.xcframework.zip", checksum: "ac314275ede25458964684a296aff24a867902d6e42c747bcb085e059138dfa6"),
    ]
)
