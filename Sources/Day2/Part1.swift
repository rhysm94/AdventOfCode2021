//
//  Part1.swift
//  Day 2 - Advent of Code 2021
//
//  Created by Rhys Morgan on 07/12/2021.
//

import Foundation

extension Position {
	mutating func update(with movement: Movement) {
		switch movement.direction {
		case .horizontal:
			horizontal += movement.distance
		case .vertical:
			depth += movement.distance
		}
	}

	var courseLength: Int {
		horizontal * depth
	}
}

func part1(input: [Movement]) -> Int {
	let position = input.reduce(into: Position.zero) { position, movement in
		position.update(with: movement)
	}

	return position.courseLength
}
