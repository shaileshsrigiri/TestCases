//
//  TestCasesTests.swift
//  TestCasesTests
//
//  Created by Shailesh Srigiri on 11/22/24.
//

import XCTest
@testable import TestCases

final class TestCasesTests: XCTestCase {

    override func setUpWithError() throws {
        try super.setUpWithError()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }

    func testExample() throws {
        XCTAssertEqual(fizzBuzz(for: 3), "Fizz")
        XCTAssertEqual(fizzBuzz(for: 5), "Buzz")
        XCTAssertEqual(fizzBuzz(for: 15), "FizzBuzz")
        XCTAssertEqual(fizzBuzz(for: 2), "2")
        XCTAssertEqual(fizzBuzz(for: nil), "Invalid Input")
    }

    func testPerformanceExample() throws {
        self.measure {
            _ = fizzBuzz(for: 15)  // Measure how long this takes
        }
    }
    
    func fizzBuzz(for number: Int?) -> String {
        guard let number = number else {
            return "Invalid Input"
        }
        if number % 3 == 0 && number % 5 == 0 {
            return "FizzBuzz"
        } else if number % 3 == 0 {
            return "Fizz"
        } else if number % 5 == 0 {
            return "Buzz"
        } else {
            return "\(number)"
        }
    }

    
    func testFizz() {
        XCTAssertEqual(fizzBuzz(for: 3), "Fizz", "3 should return Fizz")
        XCTAssertEqual(fizzBuzz(for: 6), "Fizz", "6 should return Fizz")
        XCTAssertEqual(fizzBuzz(for: -3), "Fizz", "-3 should return Fizz")
    }

    func testBuzz() {
        XCTAssertEqual(fizzBuzz(for: 5), "Buzz", "5 should return Buzz")
        XCTAssertEqual(fizzBuzz(for: 10), "Buzz", "10 should return Buzz")
        XCTAssertEqual(fizzBuzz(for: -5), "Buzz", "-5 should return Buzz")
    }

    func testFizzBuzz() {
        XCTAssertEqual(fizzBuzz(for: 15), "FizzBuzz", "15 should return FizzBuzz")
        XCTAssertEqual(fizzBuzz(for: 30), "FizzBuzz", "30 should return FizzBuzz")
        XCTAssertEqual(fizzBuzz(for: -15), "FizzBuzz", "-15 should return FizzBuzz")
        XCTAssertEqual(fizzBuzz(for: 0), "FizzBuzz", "0 should return FizzBuzz")
    }

    func testNumber() {
        XCTAssertEqual(fizzBuzz(for: 1), "1", "1 should return '1'")
        XCTAssertEqual(fizzBuzz(for: 2), "2", "2 should return '2'")
        XCTAssertEqual(fizzBuzz(for: -1), "-1", "-1 should return '-1'")
    }

    func testLargeNumbers() {
        XCTAssertEqual(fizzBuzz(for: 300), "FizzBuzz", "300 should return FizzBuzz")
        XCTAssertEqual(fizzBuzz(for: 333), "Fizz", "333 should return Fizz")
        XCTAssertEqual(fizzBuzz(for: 500), "Buzz", "500 should return Buzz")
    }

    func testRandomValues() {
        XCTAssertEqual(fizzBuzz(for: 14), "14", "14 should return '14'")
        XCTAssertEqual(fizzBuzz(for: 19), "19", "19 should return '19'")
        XCTAssertEqual(fizzBuzz(for: 99), "Fizz", "99 should return Fizz")
        XCTAssertEqual(fizzBuzz(for: 100), "Buzz", "100 should return Buzz")
    }
    
    func testZero() {
        XCTAssertEqual(fizzBuzz(for: 0), "FizzBuzz", "0 should return FizzBuzz")
    }
    
    func testNegativeNumbers() {
        XCTAssertEqual(fizzBuzz(for: -3), "Fizz", "-3 should return Fizz")
        XCTAssertEqual(fizzBuzz(for: -5), "Buzz", "-5 should return Buzz")
        XCTAssertEqual(fizzBuzz(for: -15), "FizzBuzz", "-15 should return FizzBuzz")
    }
    
    func testNilInput() {
        XCTAssertEqual(fizzBuzz(for: nil), "Invalid Input", "nil should return 'Invalid Input'")
    }


}
