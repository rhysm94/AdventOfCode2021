//
//  Part1.swift
//  Day 2 - Advent of Code 2021
//
//  Created by Rhys Morgan on 07/12/2021.
//

import Foundation

@main
struct Day2 {
	static func main() throws {
		guard let url = Bundle.module.url(forResource: "input", withExtension: "txt") else {
			return
		}

		let input = try String(contentsOf: url)
			.split(separator: "\n")
			.compactMap(Movement.init)

		print(input.count)
	}
}
