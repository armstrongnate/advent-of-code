//
//  main.swift
//  Day1
//
//  Created by Nate Armstrong on 12/4/21.
//

import Foundation

let input = try! String(contentsOf: Bundle.main.url(forResource: "input", withExtension: "txt")!, encoding: .utf8)
    .split(separator: "\n")
    .map { Int(String($0))! }

// part 1
var previous: Int?
var count = 0
for i in input {
    if let previous = previous, i > previous {
        count = count + 1
    }
    previous = i
}

print("part 1: \(count)")

// part 2
count = 0
var i = 0
previous = nil
while i < input.count - 2 {
    let sum = input[i..<i+3].reduce(0, +)
    if let previous = previous, sum > previous {
        count = count + 1
    }
    previous = sum
    i = i + 1
}

print("part 2: \(count)")
