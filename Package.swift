// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdventOfCode2021",
	platforms: [.macOS(.v11)],
    products: [
		.executable(name: "Day1", targets: ["Day1"]),
		.executable(name: "Day2", targets: ["Day2"])
    ],
    targets: [
		.executableTarget(
			name: "Day1",
			resources: [
				.copy("input.txt")
			]
		),
		.executableTarget(
			name: "Day2",
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
		),
		.testTarget(name: "Day2Tests", dependencies: ["Day2"])
    ]
)
