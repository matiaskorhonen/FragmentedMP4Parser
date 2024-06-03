extension FragmentedMP4Description {
    public struct IFrame {
        public let duration: UInt
        public let timescale: UInt
        public let byteRangeSize: UInt
        public let byteRangeOffset: UInt

        public init(duration: UInt, timescale: UInt, byteRangeSize: UInt, byteRangeOffset: UInt) {
            self.duration = duration
            self.timescale = timescale
            self.byteRangeSize = byteRangeSize
            self.byteRangeOffset = byteRangeOffset
        }

        public var durationInSeconds: Double {
            return Double(duration)/Double(timescale)
        }

        public var byteRange: String {
            return "\(byteRangeSize)@\(byteRangeOffset)"
        }
    }
}

extension FragmentedMP4Description.IFrame: CustomStringConvertible {
    public var description: String {
        return "IFrame(duration: \(duration), timescale: \(timescale), durationInSeconds: \(durationInSeconds), byteRange: '\(byteRange)')"
    }
}
