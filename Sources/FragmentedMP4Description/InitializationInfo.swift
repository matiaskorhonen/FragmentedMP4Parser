extension FragmentedMP4Description {
    public struct InitializationInfo {
        public let URI: String
        public let byteRangeSize: UInt
        public let byteRangeOffset: UInt

        public var byteRange: String {
            return "\(byteRangeSize)@\(byteRangeOffset)"
        }

        public init(URI: String, byteRangeSize: UInt, byteRangeOffset: UInt) {
            self.URI = URI
            self.byteRangeSize = byteRangeSize
            self.byteRangeOffset = byteRangeOffset
        }
    }
}

extension FragmentedMP4Description.InitializationInfo: CustomStringConvertible {
    public var description: String {
        return "InitializationInfo(URI: \(URI), byteRange: '\(byteRange)')"
    }
}
