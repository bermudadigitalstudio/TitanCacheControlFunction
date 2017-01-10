import XCTest
import TitanCacheControlMiddleware
import TitanCore

class TitanCacheControlMiddlewareTests: XCTestCase {
  func testExample() {
    let t = Titan()
    t.middleware(middleware: CacheControlMiddleware)
    let resp = t.app(request: Request("GET", "/file.tar.gz"))
    XCTAssertEqual(resp.headers.first!.0, "Cache-Control")
    XCTAssertEqual(resp.headers.first!.1, "public")
  }


    static var allTests : [(String, (TitanCacheControlMiddlewareTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
