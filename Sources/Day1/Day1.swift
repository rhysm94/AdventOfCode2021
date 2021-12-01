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
		let url = Bundle.module.url(forResource: "input", withExtension: "txt")!
		let input = try String(contentsOf: url)

		print(" - Day 1 -")
		try print("Part 1: \(part1(input: input)) increases")
	}
}
