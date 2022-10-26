//
//  warrior.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Warrior: Character {
    init(){
    var characterType: [String] = ["warrior"]
    var nameOfCharacter: String
    var pointsOfLifeOfCharacter: Int = 75
    var description: String = "L'attaquant classique. Un bon guerrier !"
    var weapon: String = "Sword"
    var weaponDamages: Int = 75
    var healing: Bool = false
        super.init(characterType: characterType,
                   nameOfCharacter: nameOfCharacter,
                   pointsOfLifeOfCharacter: pointsOfLifeOfCharacter,
                   description: description,
                   weapon: weapon,
                   weaponDamages: weaponDamages,
                   healing: healing)
    }
    }

