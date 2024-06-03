// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FragmentedMP4Parser",
  products: [
    .library(name: "FragmentedMP4Parser", targets: ["FragmentedMP4Parser"]),
    .library(name: "FragmentedMP4Description", targets: ["FragmentedMP4Description"]),
  ],
  dependencies: [],
  targets: [
    .target(name: "FragmentedMP4Description", dependencies: []),
    .target(name: "FragmentedMP4Parser", dependencies: ["FragmentedMP4Description"]),
    .testTarget(
      name: "FragmentedMP4ParserTests", dependencies: ["FragmentedMP4Parser"]),
    .testTarget(name: "FragmentedMP4DescriptionTests", dependencies: ["FragmentedMP4Description"]),
  ]
)
