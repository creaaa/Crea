
import XCTest

@testable import Crea
class CreaTests: XCTestCase {
    
    //////////
    // Date //
    //////////
    func testDate() {
        let date = Date.crea.date(from: "2016-12-03")
        XCTAssertEqual(Date.crea.string(date: date!), "2016-12-03")
    }
    
    
    ///////////
    // Array //
    ///////////
    func testArray() {
        
        let ary = [1,2,3,4,5]
        
        (1...100).forEach { _ in
            let actual = ary.crea.random
            print(actual)
            // accuracyを4にすると超高確率でエラーになる、という意味。すなわち、accuracy 4 = -4〜4、って意味。
            // -4 と 4 は「含む」。-4 <= x <= 4
            XCTAssertEqualWithAccuracy(Float(actual!), 0, accuracy: 5)
        }
        
    }
    
    
    /////////
    // Int //
    /////////
    func testInt() {
        
        // let actual = Int.crea.random(from: 1, to: 1)
        // let expected = 1
        
        // XCTAssertEqual(actual, expected)
        // fatalErrorをアサート成功させるにはどうすればいいんだよこれ...
        // XCTAssertThrowsError(Int.crea.random(from: 1, to: 0))
        
    }
    
    
    
}
