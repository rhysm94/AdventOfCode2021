//
//  Movement.swift
//  Day 2 - Advent of Code 2021
//
//  Created by Rhys Morgan on 07/12/2021.
//

import Foundation

struct Movement: Equatable {
	let direction: Direction
	let distance: Int

	enum Direction {
		case horizontal
		case vertical
	}
}

extension Movement {
	init?<S: StringProtocol>(rawValue: S) {
		let scanner = Scanner(string: String(rawValue))
		guard
			let direction = scanner.scanUpToString(" "),
			let count = scanner.scanInt()
		else {
			return nil
		}

		switch direction {
		case "forward":
			self.direction = .horizontal
			self.distance = count
		case "up":
			self.direction = .vertical
			self.distance = -count
		case "down":
			self.direction = .vertical
			self.distance = count
		default:
			return nil
		}
	}
}
