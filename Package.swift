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
        .package(url: "https://github.com/AndyIbanez/MXPagerView.git", from: "1.1.3"),
        .package(url: "https://github.com/AndyIbanez/MXSegmentedControl.git", from: "1.1.4"),
        .package(url: "https://github.com/AndyIbanez/MXParallaxHeader.git", from: "1.1.1"),
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
