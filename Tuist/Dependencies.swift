import ProjectDescription
import ConfigurationPlugin

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager: SwiftPackageManagerDependencies(
        [
            .remote(url: "https://github.com/GSM-MSG/GAuthSignin-Swift", requirement: .exact("0.0.3")),
            .remote(url: "https://github.com/GSM-MSG/Configure.git", requirement: .exact("1.0.0")),
            .remote(url: "https://github.com/SnapKit/SnapKit.git", requirement: .exact("5.0.1")),
            .remote(url: "https://github.com/Swinject/Swinject.git", requirement: .exact("2.8.0")),
    
        ],
        baseSettings: .settings(
            configurations: [
                .debug(name: .dev),
                .debug(name: .stage),
                .release(name: .prod)
            ]
        )
    ),
    platforms: [.iOS]
)
