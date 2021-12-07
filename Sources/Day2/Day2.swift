//
//  Part1.swift
//  Day 2 - Advent of Code 2021
//
//  Created by Rhys Morgan on 07/12/2021.
//

import Foundation

@main
public struct Day2 {
	public static func main() throws {
		guard let url = Bundle.module.url(forResource: "input", withExtension: "txt") else {
			return
		}

		let input = try String(contentsOf: url)
			.split(separator: "\n")
			.compactMap(Movement.init)

		print(" - Day 2 - ")
		print("Part 1: Planned Course is \(part1(input: input)) movenents")
		print("Part 2: Planned Course is \(part2(input: input)) movenents")

	}
}
