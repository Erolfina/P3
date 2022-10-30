//
//  magus.swift
//  P3
//
//  Created by Flore Gridaine on 2022-10-25.
//

import Foundation

class Magus: Character {
    init(){
        let characterType = Category.magus
        let nameOfCharacter: String = "Harry"
        let pointsOfLifeOfCharacter: Int = 200
        let description: String = "Son talent ? Soigner les membres de son équipe"
        let weapon: String = "Wand"
        let weaponDamages: Int = 20
        let healing: Bool = true
            super.init(characterType: characterType,
                       nameOfCharacter: nameOfCharacter,
                       pointsOfLifeOfCharacter: pointsOfLifeOfCharacter,
                       description: description,
                       weapon: weapon,
                       weaponDamages: weaponDamages,
                       healing: healing)
        }
}
