// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "xcodegen-artifactbundle-demo",
    targets: [
        .binaryTarget(
            name: "XcodeGenBinary",
            url: "https://github.com/yonaskolb/XcodeGen/releases/download/2.39.0/xcodegen.artifactbundle.zip",
            checksum: "c6dd51cd872dc355e914f2895109fae6bc6439dec6a35025c036188e6c372e36"
        ),
        .plugin(
            name: "xcodegen",
            capability: .command(
                intent: .custom(verb: "xcodegen", description: ""),
                permissions: [
                    .writeToPackageDirectory(reason: "")
                ]
            ),
            dependencies: ["XcodeGenBinary"]
        ),
    ]
)
