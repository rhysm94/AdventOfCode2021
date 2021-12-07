//
//  Day1.swift
//  Day1 - Advent of Code 2021
//
//  Created by Rhys Morgan on 01/12/2021.
//

import Foundation

@main
public struct Day1 {
	public static func main() throws {
		guard let url = Bundle.module.url(forResource: "input", withExtension: "txt") else {
			return
		}

		let input = try String(contentsOf: url)
			.split { $0.isWhitespace }
			.compactMap { Int($0) }

		print(" - Day 1 -")
		try print("Part 1: \(part1(input: input)) increases")
		print("Part 2: \(part2(input: input)) increases")
	}
}
