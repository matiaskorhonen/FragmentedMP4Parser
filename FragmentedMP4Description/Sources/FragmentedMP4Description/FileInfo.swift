extension FragmentedMP4Description {
    public struct FileInfo {
        public let majorBrand: String
        public let minorVersion: UInt
        public let compatibleBrands: [String]

        public init(majorBrand: String, minorVersion: UInt, compatibleBrands: [String]) {
            self.majorBrand = majorBrand
            self.minorVersion = minorVersion
            self.compatibleBrands = compatibleBrands
        }
    }
}

extension FragmentedMP4Description.FileInfo: CustomStringConvertible {
    public var description: String {
        return "FileInfo(majorBrand: \(majorBrand), minorVersion: \(minorVersion), compatibleBrands: \(compatibleBrands))"
    }
}
