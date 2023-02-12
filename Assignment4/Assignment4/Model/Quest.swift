//
//  Quest.swift
//  Assignment4
//
//  Created by Caitlin Johnson on 2/12/23.
//

import Foundation

struct Quest {
    init(_ quest: String, _ c1: String, _ c2: String, _ consequence1: Int, _ consequence2: Int) {
        scene = quest
        choiceOne = c1
        choiceTwo = c2
        cons1 = consequence1
        cons2 = consequence2
    }
    var scene: String
    var choiceOne: String
    var choiceTwo: String
    var cons1: Int
    var cons2: Int
}
