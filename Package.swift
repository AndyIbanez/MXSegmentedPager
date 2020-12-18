// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MXSegmentedPager",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "MXSegmentedPager",
                 targets: ["MXSegmentedPager"])
    ],
    dependencies: [
        .package(url: "https://github.com/maxep/MXPagerView.git", from: "0.2.0"),
        .package(url: "https://github.com/AndyIbanez/MXSegmentedControl.git", from: "1.1.2"),
        .package(url: "https://github.com/maxep/MXParallaxHeader.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "MXSegmentedPager",
            dependencies: [
                "MXPagerView",
                "MXSegmentedControl",
                "MXParallaxHeader"
            ], path: "MXSegmentedPager"
        )
    ],
    swiftLanguageVersions: [.v5,.v4_2],
    cLanguageStandard: .c11
)
