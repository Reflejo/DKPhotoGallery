// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DKPhotoGallery",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DKPhotoGallery",
            targets: ["DKPhotoGallery"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/SDWebImage/SDWebImage.git",
            from: "5.0.0"
        ),
        .package(
            url: "https://github.com/kirualex/SwiftyGif.git",
            from: "5.4.0"
        )
    ],
    targets: [
        .target(
            name: "DKPhotoGallery",
            dependencies: ["SDWebImage", "SwiftyGif"],
            path: "DKPhotoGallery"
        )
    ]
)
