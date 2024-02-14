# xcodegen-artifactbundle-demo

[XcodeGen 2.39.0](https://github.com/yonaskolb/XcodeGen/releases/tag/2.39.0) supports artifact bundle. This repository is a sample project that uses the artifact bundle.

## Getting Started

To generate `MyProject.xcodeproj`, run the following command.

```shell
swift package xcodegen generate
```

And then, open `MyProject.xcodeproj` with Xcode.

```shell
xed MyProject.xcodeproj
```

I tested the instructions above with Xcode 15.2 on macOS 14.3.1 arm64.
