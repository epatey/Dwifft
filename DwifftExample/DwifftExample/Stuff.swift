//
//  Stuff.swift
//  DwifftExample
//
//  Created by Jack Flintermann on 3/30/17.
//  Copyright © 2017 jflinter. All rights reserved.
//

import Dwifft

struct Stuff {

    // I shamelessly stole this list of things from my friend Pasquale's blog post because I thought it was funny. You can see it at https://medium.com/elepath-exports/spatial-interfaces-886bccc5d1e9
    static func wordStuff() -> [DwifftSection] {
        let possibleStuff: [(String, [AnyHashable])] = [
            ("foods", [
                "Onions",
                "Pineapples",
            ]),
            ("animal-related", [
                "Cats",
                "A used lobster",
                "Fish legs",
                "Adam's apple",
            ]),
            ("muddy things", [
                "Mud",
            ]),
            ("numbers", [
                6,
                18,
                4
                ]),
            ("other", [
                "Splinters",
                "Igloo cream",
                "Self-flying car"
            ])
        ]
        var mutable = [(String, [AnyHashable])]()
        for (key, values) in possibleStuff {
            let filtered = values.filter { _ in arc4random_uniform(2) == 0 }
            if !filtered.isEmpty { mutable.append((key, filtered)) }
        }
        return mutable.map { DwifftSection.section(identifier: $0, values: $1) }
    }

    static func emojiStuff() -> [DwifftSection] {
        let possibleStuff = [
            ("foods", [
                "🍆",
                "🍑",
                "🌯",
                ]),
            ("animal-related", [
                "🐈",
                "🐙",
                "🦑",
                "🦍",
                ]),
            ("muddy things", [
                "💩",
                ]),
            ("other", [
                "🌚",
                "🌝",
                "🗿"
                ])
        ]
        var mutable = [(String, [String])]()
        for (key, values) in possibleStuff {
            let filtered = values.filter { _ in arc4random_uniform(2) == 0 }
            if !filtered.isEmpty { mutable.append((key, filtered)) }
        }
        return mutable.map { DwifftSection.section(identifier: $0, values: $1) }
    }
}