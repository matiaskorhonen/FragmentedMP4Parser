/// Container for descriptive information of a fragmented MPEG-4 file. It includes information that is relevant to 
/// generating playlists for HTTP Live Streaming
public struct FragmentedMP4Description {
    public let fileInfo: FileInfo
    public let mediaInfo: MediaInfo
    public let initializationInfo: InitializationInfo
    public let tracks: [Track]
    public let fragments: [Fragment]
    public let iFrames: [IFrame]

    public init(fileInfo: FileInfo,
                mediaInfo: MediaInfo,
                initializationInfo: InitializationInfo,
                tracks: [Track],
                fragments: [Fragment],
                iFrames: [IFrame]) {
        self.fileInfo = fileInfo
        self.mediaInfo = mediaInfo
        self.initializationInfo = initializationInfo
        self.tracks = tracks
        self.fragments = fragments
        self.iFrames = iFrames
    }
}

extension FragmentedMP4Description: CustomStringConvertible {
    var tracksDescription: String {
        return tracks.map { $0.description }.joined(separator: ",\n                            ")
    }

    public var description: String {
        return "FragmentedMP4Description(fileInfo: \(fileInfo),\n                    mediaInfo: \(mediaInfo),\n                    initializationInfo: \(initializationInfo)\n                    tracks: \(tracksDescription))"
    }
}

extension FragmentedMP4Description: CustomDebugStringConvertible {
    var fragmentsDescription: String {
        return fragments.map { $0.description }.joined(separator: ",\n                               ")
    }

    public var debugDescription: String {
        return "FragmentedMP4Description(fileInfo: \(fileInfo),\n                    mediaInfo: \(mediaInfo),\n                    initializationInfo: \(initializationInfo)\n                    tracks: \(tracksDescription),\n                    fragments: \(fragmentsDescription)\n                    iframes: \(iFrames))"
    }
}
