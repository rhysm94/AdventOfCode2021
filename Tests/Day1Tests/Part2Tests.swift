//
//  Part2Tests.swift
//  Day1Tests
//
//  Created by Rhys Morgan on 02/12/2021.
//

import Day1
import XCTest

final class Part2Tests: XCTestCase {
	func testWithSampleInput() throws {
		let testArray = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
		let result = part2(input: testArray)
		XCTAssertEqual(5, result)
	}
}
