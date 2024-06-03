extension FragmentedMP4Description {
    public struct MediaInfo {
        public let peakBitRate: UInt
        public let averageBitRate: UInt
        public let iFramePeakBitRate: UInt
        public let iFrameAverageBitRate: UInt
        public let audioCodec: String
        public let videoCodec: String
        public var codecs: [String] {
            return [audioCodec, videoCodec]
        }
        public let resolution: (width: UInt, height: UInt)
        public let peakFrameRate: Double
        public let duration: Double

        public init(peakBitRate: UInt,
                    averageBitRate: UInt,
                    iFramePeakBitRate: UInt,
                    iFrameAverageBitRate: UInt,
                    audioCodec: String,
                    videoCodec: String,
                    resolution: (width: UInt, height: UInt),
                    peakFrameRate: Double,
                    duration: Double) {
            self.peakBitRate = peakBitRate
            self.averageBitRate = averageBitRate
            self.iFramePeakBitRate = iFramePeakBitRate
            self.iFrameAverageBitRate = iFrameAverageBitRate
            self.audioCodec = audioCodec
            self.videoCodec = videoCodec
            self.resolution = resolution
            self.peakFrameRate = peakFrameRate
            self.duration = duration
        }
    }
}

extension FragmentedMP4Description.MediaInfo: CustomStringConvertible {
    public var description: String {
        return "MediaInfo(peakBitRate: \(peakBitRate), averageBitRate: \(averageBitRate), iFramePeakBitRate: \(iFramePeakBitRate), iFrameAverageBitRate: \(iFrameAverageBitRate), codecs: \(codecs), resolution: \(resolution), peakFrameRate: \(peakFrameRate), duration: \(duration)"
    }
}
