@testable import Kaidee
import XCTest

class KaideeTests: XCTestCase {
  func test() {
    let storyboard = UIStoryboard(name: "Main", bundle: .main)
    let viewController = storyboard.instantiateInitialViewController()

    XCTAssertNotNil(viewController)
  }
}
