extension FragmentedMP4Description {
    public struct Fragment {
        public let sequenceNumber: UInt
        public let duration: UInt
        public let timescale: UInt
        public let byteRangeSize: UInt
        public let byteRangeOffset: UInt
        public let URI: String

        public var durationInSeconds: Double {
            return Double(duration)/Double(timescale)
        }

        public var byteRange: String {
            return "\(byteRangeSize)@\(byteRangeOffset)"
        }

        public init(sequenceNumber: UInt,
                    duration: UInt,
                    timescale: UInt,
                    byteRangeSize: UInt,
                    byteRangeOffset: UInt,
                    URI: String) {
            self.sequenceNumber = sequenceNumber
            self.duration = duration
            self.timescale = timescale
            self.byteRangeSize = byteRangeSize
            self.byteRangeOffset = byteRangeOffset
            self.URI = URI
        }
    }
}

extension FragmentedMP4Description.Fragment: CustomStringConvertible {
    public var description: String {
        return "Fragment(sequenceNumber: \(sequenceNumber), duration: \(duration), timescale: \(timescale), durationInSeconds: \(durationInSeconds), byteRange: '\(byteRange)', URI: '\(URI)')"
    }
}
