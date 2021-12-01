//
//  Part1.swift
//  Day1
//
//  Created by Rhys Morgan on 01/12/2021.
//

import Foundation

public func part1(input: String) throws -> Int {
	let input = input
		.split { $0.isWhitespace }
		.compactMap { Int($0) }

	let result = zip(input, input.dropFirst())
		.reduce(0) { acc, next in
			next.1 > next.0 ? acc + 1 : acc
		}

	return result
}
