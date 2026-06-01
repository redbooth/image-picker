// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ImagePicker",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "ImagePicker", targets: ["ImagePicker"])
    ],
    targets: [
        .target(
            name: "ImagePicker",
            path: "ImagePicker",
            exclude: [
                "Info.plist",
                "ImagePicker.h"
            ],
            resources: [
                .process("Resources")
            ]
        )
    ],
    // Sources were authored under Swift 4.2 (per the original podspec). Stay in
    // 4.2 mode so IBOutlet @objc inference and other 4.x semantics keep working.
    swiftLanguageVersions: [.v4_2]
)
