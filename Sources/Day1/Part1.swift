//
//  Part1.swift
//  Day 1 - Advent of Code 2021
//
//  Created by Rhys Morgan on 01/12/2021.
//

import Foundation

public func part1(input: [Int]) throws -> Int {
	let result = zip(input, input.dropFirst())
		.reduce(0) { acc, next in
			next.1 > next.0 ? acc + 1 : acc
		}

	return result
}
