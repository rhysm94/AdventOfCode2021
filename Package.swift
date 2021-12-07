// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdventOfCode2021",
	defaultLocalization: LanguageTag("en"),
    products: [
		.executable(name: "Day1", targets: ["Day1"])
    ],
    targets: [
		.executableTarget(
			name: "Day1",
			resources: [
				.copy("input.txt")
			]
		),
		.testTarget(
			name: "Day1Tests",
			dependencies: ["Day1"],
			resources: [
				.copy("Part1Sample.txt")
			]
		)
    ]
)
