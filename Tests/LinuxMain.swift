import XCTest

@testable import FragmentedMP4DescriptionTestSuite
@testable import FragmentedMP4ParserTests

XCTMain([
  testCase(FragmentedMP4ParserTests.allTests),
  testCase(FragmentedMP4DescriptionTestSuite.allTests),
])
