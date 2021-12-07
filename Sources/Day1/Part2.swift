//
//  Part2.swift
//  Day 1 - Advent of Code 2021
//
//  Created by Rhys Morgan on 01/12/2021.
//

import Foundation

func windows<S: Sequence>(_ sequence: S) -> [S.Element] where S.Element == Int {
	zip(sequence, zip(sequence.dropFirst(), sequence.dropFirst(2)))
		.map { a, bc in
			return a + bc.0 + bc.1
		}
}

public func part2(input: [Int]) -> Int {
	let first = windows(input)
	let dropFirst = windows(input.dropFirst())

	let answer = zip(first, dropFirst).reduce(0) { acc, windows in
		windows.1 > windows.0 ? acc + 1 : acc
	}

	return answer
}
