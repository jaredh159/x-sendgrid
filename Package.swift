// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "XSendGrid",
  platforms: [.macOS(.v12)],
  products: [
    .library(name: "XSendGrid", targets: ["XSendGrid"]),
  ],
  dependencies: [
    .package(url: "https://github.com/jaredh159/x-http.git", from: "1.0.0"),
    .package(url: "https://github.com/pointfreeco/swift-nonempty.git", from: "0.3.0"),
  ],
  targets: [
    .target(name: "XSendGrid", dependencies: [
      .product(name: "XHttp", package: "x-http"),
      .product(name: "NonEmpty", package: "swift-nonempty"),
    ]),
  ]
)
