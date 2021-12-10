//
//  File.swift
//  
//
//  Created by Rhys Morgan on 10/12/2021.
//

import Foundation

@main
struct Day3 {
	public static func main() throws {
		guard let inputURL = Bundle.module.url(forResource: "input", withExtension: "txt") else {
			return
		}

		let input = try String(contentsOf: inputURL).split(separator: "\n")
		print(input)

		let part1Result = part1(input: input)

		print(" - Day 3 - ")
		print("Part 1: Power Consumption is \(part1Result)")
	}
}
