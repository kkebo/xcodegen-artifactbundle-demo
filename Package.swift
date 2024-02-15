// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "xcodegen-artifactbundle-demo",
    targets: [
        .binaryTarget(
            name: "XcodeGenBinary",
            url: "https://github.com/yonaskolb/XcodeGen/releases/download/2.39.1/xcodegen.artifactbundle.zip",
            checksum: "44d49941f68fc27afc6c33a0d64eb4413fdd1fdff688584bd64db456b85ecf71"
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
