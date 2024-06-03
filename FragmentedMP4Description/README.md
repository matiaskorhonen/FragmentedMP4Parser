# FragmentedMP4Description

A container class that stores descriptive information of a fragmented MPEG-4 (fMP4) file. The container includes information that is relevant to generating HTTP Live Streaming (HLS) playlists.

This module was built to to store data provided by the [FragmentedMP4Parser](https://github.com/sbader/FragmentedMP4Parser) module, but can also be used as a generic container class.

## Installation

To install the package add the following line to the `Package.swift` dependencies.

```swift
.Package(url: "https://github.com/sbader/FragmentedMP4Description.git", majorVersion: 0)
```

## Usage

For direct usage of this module see the container initialization in [FragmentedMP4DescriptionTests.swift](https://github.com/sbader/FragmentedMP4Description/blob/master/Tests/FragmentedMP4DescriptionTests/FragmentedMP4DescriptionTests.swift#L7).

## License

FragmentedMP4Description is released under the MIT license. See LICENSE for details.
