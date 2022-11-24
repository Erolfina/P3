//
//  character.swift
//  P3
//
//  Created by Flore Gridaine on 2022-11-04.
//

import Foundation

enum Category : String {
    case colossus = "Colossus"
    case dwarf = "Dwarf"
    case magus = "Magus"
    case warrior = "Warrior"
}

class Character {
    
    let type: String
    var characterPointsOfLife: Int
    let description: String
    let weapon: String
    let weaponDamages: Int
    let healing: Bool
    let healingPoints: Int
    
    init (type: String, characterPointsOfLife: Int, description: String, weapon: String, weaponDamages: Int, healing: Bool, healingPoints: Int ) {
        self.type = type
        self.characterPointsOfLife = characterPointsOfLife
        self.description = description
        self.weapon = weapon
        self.weaponDamages = weaponDamages
        self.healing = healing
        self.healingPoints = healingPoints
    }
   
}

