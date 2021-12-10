//
//  Part1.swift
//  Day 3 - Advent of Code 2021
//
//  Created by Rhys Morgan on 10/12/2021.
//

import Foundation

func part1<S: StringProtocol>(input: [S]) -> UInt {
	let bitWidth = input.first?.count ?? 0
	let mostCommonValues = mostCommonValues(input: input, width: bitWidth)

	let gammaString = String(mostCommonValues.map { valueCount in
		valueCount.zeroes > valueCount.ones ? "0" : "1"
	})

	guard let gammaRate = UInt(gammaString, radix: 2) else {
		fatalError("Couldn't convert to a gammaRate")
	}

	let epsilonMaskString = String(repeating: "1", count: bitWidth)
	guard let epsilonMask = UInt(epsilonMaskString, radix: 2) else {
		fatalError("Couldn't get epsilon mask")
	}

	let epsilonRate = gammaRate ^ epsilonMask

	return gammaRate * epsilonRate
}

private func mostCommonValues<S: StringProtocol>(input: [S], width: Int) -> [ValueCount] {
	let input = input.map { $0.map { $0 } }
	return input
		.reduce(into: Array(repeating: ValueCount(zeroes: 0, ones: 0), count: width)) { results, next in
			for index in next.indices {
				if next[index] == "0" {
					results[index].zeroes += 1
				} else {
					results[index].ones += 1
				}
			}
		}
}
