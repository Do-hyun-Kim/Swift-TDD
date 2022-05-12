
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




- Comparable Value Assertions

  - 두 값을 비교해서 더 큰지 작은지를 테스트 한다.

    ```swift
    - XCTAssertGreaterThan(<#T##expression1: Comparable##Comparable#>, <#T##expression2: Comparable##Comparable#>)
    - XCTAssertGreaterThan(<#T##expression1: Comparable##Comparable#>, <#T##expression2: Comparable##Comparable#>, <#T##message: String##String#>)
    - XCTAssertGreaterThanOrEqual(<#T##expression1: Comparable##Comparable#>, <#T##expression2: Comparable##Comparable#>)
    - XCTAssertLessThan(<#T##expression1: Comparable##Comparable#>, <#T##expression2: Comparable##Comparable#>)
    - XCTAssertLessThan(<#T##expression1: Comparable##Comparable#>, <#T##expression2: Comparable##Comparable#>, <#T##message: String##String#>)
    - XCTAssertLessThanOrEqual(<#T##expression1: Comparable##Comparable#>, <#T##expression2: Comparable##Comparable#>)
    ```

    - XCTAssertGreaterThan expression1 > expression2 이면 True 그렇지 않으면 Message 값을 출력한다.
    - XCTAssertGreaterThanOrEqual expression1 >= expression2 이면 True 그렇지 않으면 Message 값을 출력한다.
    - XCTAssertLessThan expression1 < expression2 이면 True 그렇지 않으면 Message 값을 출력한다.
    - XCTAssertLessThanOrEqual expression1 <= expression2 이면 True 그렇지 않으면 Message 값을 출력한다.

  

- XCTest의 Async Unit Test

  - Async Call Back, delegate Method, 특정 시간 내에 완료 해야 하는 상황, DispatchQueue Async Block 등에 사용한다.	

    ```swift
    XCTestExpectation(description: <#T##String#>)
    ```

    - XCTestExpectation(description: **<#T##String#>**) 비동기 코드 작업을 수행하기 전에 작업 설명이 포함된 인스턴스를 만드는 Method
      - description : 작업 설명을 작성하는 부분

  - 비동기 작업을 반환 되면(Call Back: ) Assert을 수행하여 작업의 수행 결과과 예상 결과를 충족 하는지 확인 한다. 작업이 완료 되면 fullfill() 대기를 중지 시키고 다음 테스트를 진행할수 있도록 알려준다.

    ```swift
    requestExpectation.fulfill()
    ```

    - fullfill() wait문의 시간 초과가 만료되기 전에 메소드를 실행하지 않으면 XCTest 테스트 실패를 기록합니다.

    ```swift
    wait(for: [requestExpectation], timeout: 82.0)
    ```

<br>


<img width="905" alt="스크린샷 2022-04-29 오후 7 58 23" src="https://user-images.githubusercontent.com/23008224/165932128-38c341f6-b3df-45ef-8232-a3b0687ddc35.png">

<br>

<h3>Swift Mocking Test</h3>



