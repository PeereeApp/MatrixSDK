# Preamble

This project builds a modified version of the Matrix iOS SDK (see below). This version is stripped from some features and dependencies not necessary for the Peeree app.

# MatrixSDK

A SwiftPM package containting a binary framework built from [Topheee/matrix-ios-sdk](https://github.com/Topheee/matrix-ios-sdk).

The framework contains the following binaries:
- iOS (arm64)
- iOS Simulator (arm64/x86_64)
- macOS (arm64/x86_64)

These binaries are currently not included:
- Mac Catalyst (arm64/x86_64)

## Installation

To add MatrixSDK to your Xcode project, choose `File | Swift Packages | Add Package Dependency...` and enter the following url.
```
https://github.com/PeereeApp/MatrixSDK
```

To be able to debug the library in your derived project, clone the original [matrix-ios-sdk](https://github.com/Topheee/matrix-ios-sdk) and checkout the branch `peeree-compat-vX.X.X`.
Then, in your Xcode project, add an LLDB init file at the top of project named `LLDBInitFile` and map the source path generated in this build to the path where you cloned the project to:
```
settings set target.source-map /Users/runner/work/MatrixSDK/MatrixSDK/matrix-ios-sdk/MatrixSDK /Users/me/path/to/matrix-ios-sdk/MatrixSDK
```

Edit your Xcode build scheme and configure `$(SRCROOT)/LLDBInitFile` for the _LLDB Init File_ setting.
