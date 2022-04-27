
<H1>IOS Unit Test</H1>

<h3>Unit Test Init Method</h3>

  - setUpWithError() : 테스트에서 가장 먼저 실행되는 메소드로 보통 어떤 모델이나 시스템을 정의하는 역할을 한다.
  - tearDownWithError() : 테스트에 가장 마지막에 실행되는 메소드로 정의 했던 객체들을 해체 시키는 역활을 한다.
  - testExample(): 테스트 코드를 작성하는 메인 코드 (이 부분은 삭제하고 새로 생성 해도 된다), 테스트할 코드를 정의하는 부분
  - testPerformanceExample(): 성능을 측정하기 위해 사용하는 것이다.
<br>

<h3>Unit Test Case Class File 구조</h3>

```swift
import XCTest
@testable import Swift_TDD

class Swift_TDDTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
```

