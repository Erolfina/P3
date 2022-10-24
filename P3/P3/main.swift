//
//  main.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-24.
//

import Foundation


class Game {

}

//List of type of Character possible
enum CharacterType {
    case dwarf
    case warrior
    case magus
    case colossus
}

// Classe Character with their proprieties (type, life, weapon
class Character{
    var type = [CharacterType]
    let pointsOfLife : Int
    var weapon
}

