//
//  Part1Tests.swift
//  Day 2 Tests - Advent of Code 2021
//
//  Created by Rhys Morgan on 07/12/2021.
//

import XCTest

@testable import Day2

final class Part2Tests: XCTestCase {
	func testSampleDataDecodes() {
		let sample = """
		forward 5
		down 5
		forward 8
		up 3
		down 8
		forward 2
		"""

		let expected: [Movement] = [
			Movement(direction: .horizontal, distance: 5),
			Movement(direction: .vertical, distance: 5),
			Movement(direction: .horizontal, distance: 8),
			Movement(direction: .vertical, distance: -3),
			Movement(direction: .vertical, distance: 8),
			Movement(direction: .horizontal, distance: 2)
		]

		let actual = sample.split(separator: "\n").compactMap(Movement.init(rawValue:))

		XCTAssertEqual(expected, actual)
	}
}
