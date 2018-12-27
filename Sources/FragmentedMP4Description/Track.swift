extension FragmentedMP4Description {
    public struct Track {
        public let trackID: UInt
        public let timescale: UInt
        public let duration: UInt
        public let containsEditLists: Bool

        public init(trackID: UInt, timescale: UInt, duration: UInt, containsEditLists: Bool) {
            self.trackID = trackID
            self.timescale = timescale
            self.duration = duration
            self.containsEditLists = containsEditLists
        }
    }
}

extension FragmentedMP4Description.Track: CustomStringConvertible {
    public var description: String {
        return "Track(trackID: \(trackID), timescale: \(timescale), duration: \(duration))"
    }
}
