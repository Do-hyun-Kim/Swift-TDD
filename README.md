
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

<h3>Unit Test XCTest FrameWork</h3>

- Boolean Assertion

  - True나 False를 생성 하는 조건을 테스트 한다.

    ```swift
    XCTAssert(**<#T##expression: Bool##Bool#>**)
    XCTAssertTrue(**<#T##expression: Bool##Bool#>**, **<#T##message: String##String#>**)
    XCTAssertTrue(**<#T##expression: Bool##Bool#>**)
    XCTAssertFalse(**<#T##expression: Bool##Bool#>**, **<#T##message: String##String#>**)
    XCTAssertFalse(**<#T##expression: Bool##Bool#>**)
    ```

    - expression : 테스트할 조건(식) 
    - message : 실패할 경우 출력할 메세지(Optinal)

- Nil and Non-Nil Assertion

  - 테스트 조건이 Nil인지 Non-Nil 인지 테스트 한다.

    ```swift
    - XCTAssertNotNil(<#T##expression: Any?##Any?#>)
    - XCTAssertNotNil(<#T##expression: Any?##Any?#>, <#T##message: String##String#>)
    - XCTAssertNil(<#T##expression: Any?##Any?#>)
    - XCTAssertNil(<#T##expression: Any?##Any?#>, <#T##message: String##String#>)
    - XCTUnwrap(<#T##expression: T?##T?#>)
    - XCTUnwrap(<#T##expression: T?##T?#>, <#T##message: String##String#>)
    ```

    - XCTAssertNil의 expression == nil 이면 true 이며 테스트를 통과 한다. 그렇지 않으면 message 값을 출력한다.
    - XCTAssertNotNil expression != nil 이면 true 이며 테스트를 통과 한다. 그렇지 않으면 message 값을 출력한다.
    - XCTUnwrap expression != nil 이면 강제 Unwrapping 값을 반환 그렇지 않으면 message 값을 출력한다.

- Eqality and Inequality Assertions

  - 두 값이 같은지 다른지를 테스트 한다.

    ```swift
    - XCTAssertEqual(<#T##expression1: Equatable##Equatable#>, <#T##expression2: Equatable##Equatable#>)
    - XCTAssertEqual(<#T##expression1: Equatable##Equatable#>, <#T##expression2: Equatable##Equatable#>, <#T##message: String##String#>)
    - XCTAssertEqual(<#T##expression1: FloatingPoint##FloatingPoint#>, <#T##expression2: FloatingPoint##FloatingPoint#>, accuracy: <#T##FloatingPoint#>)
    - XCTAssertEqual(<#T##expression1: Numeric##Numeric#>, <#T##expression2: Numeric##Numeric#>, accuracy: <#T##Numeric#>)
    - XCTAssertNotEqual(<#T##expression1: Equatable##Equatable#>, <#T##expression2: Equatable##Equatable#>)
    - XCTAssertNotEqual(<#T##expression1: Equatable##Equatable#>, <#T##expression2: Equatable##Equatable#>, <#T##message: String##String#>)
    - XCTAssertNotEqual(<#T##expression1: FloatingPoint##FloatingPoint#>, <#T##expression2: FloatingPoint##FloatingPoint#>, accuracy: <#T##FloatingPoint#>)
    - XCTAssertNotEqual(<#T##expression1: Numeric##Numeric#>, <#T##expression2: Numeric##Numeric#>, accuracy: <#T##Numeric#>)
    ```

    - XCTAssertEqual expression1 == expression2 이면 True 이며 테스트를 통과 하며, 그렇지 않으면 Message 값을 출력한다.
    - XCTAssertNotEqual expression1 != expression2 이면 True 이며 테스트를 통과 하며, 그렇지 않으면 Message 값을 출력한다.
    - XCTAssertEqual은 FloatingPoint와 Numeric 값을 expression에 받을수 있는 것이 존재 하며, FloatingPoint는 "부동 소수점 숫자 타입" 이며, Numeric 같은 경우 "정수 및 부동 소수점 타입"을 말한다. 

  

<h3>Unit Test Success</h3>

 <img width="901" alt="스크린샷 2022-04-27 오후 9 21 58" src="https://user-images.githubusercontent.com/23008224/165517182-83a999be-c280-4093-9f47-4c34a04f6572.png">


