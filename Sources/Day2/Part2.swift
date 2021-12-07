//
//  Part2.swift
//  Day 2 - Advent of Code 2021
//
//  Created by Rhys Morgan on 07/12/2021.
//

import Foundation

func part2(input: [Movement]) -> Int {
	let reduced = input.reduce(into: Position.zero) { position, movement in
		switch movement.direction {
		case .vertical:
			position.aim += movement.distance
		case .horizontal:
			position.horizontal += movement.distance
			position.depth += (position.aim * movement.distance)
		}
	}

	return reduced.courseLength
}
