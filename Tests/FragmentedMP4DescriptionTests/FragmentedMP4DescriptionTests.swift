import XCTest

@testable import FragmentedMP4Description

class FragmentedMP4DescriptionTests: XCTestCase {

    let container: FragmentedMP4Description = {
        let initializationInfo = FragmentedMP4Description.InitializationInfo(URI: "movie.mp4",
                                                                             byteRangeSize: 32,
                                                                             byteRangeOffset: 0)

        let fileInfo = FragmentedMP4Description.FileInfo(majorBrand: "mp42",
                                                         minorVersion: 1,
                                                         compatibleBrands: ["mp41", "mp42", "isom", "hlsf"])

        let videoTrack = FragmentedMP4Description.Track(trackID: 1,
                                                        timescale: 1,
                                                        duration: 4_123,
                                                        containsEditLists: false)

        let audioTrack = FragmentedMP4Description.Track(trackID: 2,
                                                        timescale: 1,
                                                        duration: 4_123,
                                                        containsEditLists: false)

        let iFrames = (0..<20).enumerated().map { (offset, element) -> FragmentedMP4Description.IFrame in
            return FragmentedMP4Description.IFrame(duration: 10,
                                                   timescale: 1,
                                                   byteRangeSize: 1_024,
                                                   byteRangeOffset: UInt(offset * 1_024))
        }

        let fragments = (0..<20).enumerated().map { (offset, element) -> FragmentedMP4Description.Fragment in
            return FragmentedMP4Description.Fragment(sequenceNumber: UInt(offset),
                                                     duration: 10,
                                                     timescale: 1,
                                                     byteRangeSize: 1_024,
                                                     byteRangeOffset: UInt(offset * 1_024),
                                                     URI: "movie.mp4")
        }

        let mediaInfo = FragmentedMP4Description.MediaInfo(peakBitRate: 12_347,
                                                           averageBitRate: 8_217,
                                                           iFramePeakBitRate: 9_948,
                                                           iFrameAverageBitRate: 8_124,
                                                           audioCodec: "mp4a",
                                                           videoCodec: "avc1",
                                                           resolution: (width: UInt(1920), height: UInt(1080)),
                                                           peakFrameRate: 29)

        return FragmentedMP4Description(fileInfo: fileInfo,
                                        mediaInfo: mediaInfo,
                                        initializationInfo: initializationInfo,
                                        tracks: [videoTrack, audioTrack],
                                        fragments: fragments,
                                        iFrames: iFrames)

    }()

    func testBasicContainerCreation() {
        XCTAssertNotNil(container)
    }

}
