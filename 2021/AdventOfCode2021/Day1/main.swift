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

var previous: Int?
var count = 0
for i in input {
    if let previous = previous, i > previous {
        count = count + 1
    }
    previous = i
}

print("result: \(count)")
