//
//  character.swift
//  P3
//
//  Created by Flore Gridaine on 2022-11-04.
//

import Foundation

enum Category {
    case colossus
    case dwarf
    case magus
    case warrior
}

class Character {
    
    let characterType: String
    let characterPointsOfLife: Int
    let description: String
    let weapon: String
    let weaponDamages: Int
    let healing: Bool
    
    init (characterType: String, characterPointsOfLife: Int, description: String, weapon: String, weaponDamages: Int, healing: Bool) {
        self.characterType = characterType
        self.characterPointsOfLife = characterPointsOfLife
        self.description = description
        self.weapon = weapon
        self.weaponDamages = weaponDamages
        self.healing = healing
    }
}

