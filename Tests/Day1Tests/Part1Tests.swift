//
//  Part1Tests.swift
//  Day1Tests
//
//  Created by Rhys Morgan on 01/12/2021.
//

import Day1
import XCTest

final class Part1Tests: XCTestCase {
	func testWithSampleInput() throws {
		let inputURL = Bundle.module.url(forResource: "Part1Sample", withExtension: "txt")
		let input = try String(contentsOf: XCTUnwrap(inputURL))
		let result = try part1(input: input)
		XCTAssertEqual(7, result)
	}
}
