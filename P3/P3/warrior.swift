//
//  warrior.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Warrior: Character {
    init(){
        let characterType = Category.warrior
        let nameOfCharacter: [String] = []
        let pointsOfLifeOfCharacter: Int = 75
        let description: String = "L'attaquant classique. Un bon guerrier !"
        let weapon: String = "Sword"
        let weaponDamages: Int = 75
        let healing: Bool = false
            super.init(characterType: characterType,
                   nameOfCharacter: nameOfCharacter,
                   pointsOfLifeOfCharacter: pointsOfLifeOfCharacter,
                   description: description,
                   weapon: weapon,
                   weaponDamages: weaponDamages,
                   healing: healing)
    }
    }

